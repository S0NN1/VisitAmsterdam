<template>
  <!--  <client-only>
          <MapItem
            class="card h-96 w-96"
          />
    </client-only>-->
  <div>
    <HeroImage />
    <div class="m-6">
      <h2 class="mx-6">
        Hottest events
      </h2>
      <div class="m-4">
        <CarouselItem :carousel-images="hottestEvents" />
      </div>
    </div>
    <div class="divider m-6" />
    <div class="m-6">
      <h2 class="mx-6">
        All events
      </h2>
      <h3 class="mx-6">
        Filters
      </h3>
      <div class="ml-8">
        <div
          v-for="filterName in filters"
          :key="filterName.tag"
          class="badge badge-lg p-4 mr-4 w-20 cursor-pointer hover-bordered filter-shadow"
          :class="[filter===filterName.tag ? 'badge-primary' : 'badge-neutral', mobileDev ? 'my-1' : '']"
          @click="applyFilter(filterName.tag)"
        >
          {{ filterName.name }}
        </div>
      </div>
      <div class="divider mx-6" />
      <div class="w-full justify-center text-right">
        <p class="mx-6 my-2 text-lg">
          <b>{{ filter }} | {{ eventArray.length }} results</b>
        </p>
      </div>
      <div class="flex justify-center">
        <div class="w-3/4 grid gap-32 grid-cols-3 mb-20" :class="mobileDev ? 'grid-cols-1' : 'grid-cols-3'">
          <div v-for="event in eventArray" :key="event.id">
            <NuxtLink :to="'events/' + event.id">
              <CardItem
                :object="event"
                card-type="MULTIPLE"
                class="hover:shadow-2xl transition ease-in-out duration-200"
              />
            </NuxtLink>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

import { BACKEND_URL, MONTHS, WEEK_DAYS } from 'assets/js/constants'

export default {
  name: 'EventsPage',
  props: {},
  data () {
    return {
      filter: 'ALL',
      eventArray: [],
      events: [],
      hottestEvents: [],
      mediaQuery: null,
      mobileDev: false,
      filters: [
        {
          name: 'All',
          tag: 'ALL'
        },
        {
          name: 'Summer',
          tag: 'SUMMER'
        },
        {
          name: 'Winter',
          tag: 'WINTER'
        },
        {
          name: 'Spring',
          tag: 'SPRING'
        },
        {
          name: 'Autumn',
          tag: 'AUTUMN'
        },
        {
          name: 'Festival',
          tag: 'FESTIVAL'
        }
      ]
    }
  },
  mounted () {
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 700px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
    this.fetchEvents()
  },
  methods: {
    craftEventObj (item) {
      return {
        id: item.id,
        image: item.heroImageUrl,
        name: item.name,
        description: item.description,
        date: 'Wednesday 17',
        time: '20.30',
        link: item.infoUrl,
        duration: 8
      }
    },
    /**
     * Populate two different lists:
     * - events, containing all the upcoming events
     * - hotEvents, containing a small collection of the previous category
     * @returns {Promise<void>}
     */
    async fetchEvents () {
      const that = this
      this.events = await this.$axios.$get(BACKEND_URL + '/api/v1/event/getUpcoming')
      this.events.forEach(function (item) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
      const chosenEvents = []
      for (let counter = 0; (counter < 3 && counter < this.events.length); counter = counter + 1) {
        let random = Math.floor(Math.random() * this.events.length)
        let event = this.events[random]
        const eventDate = new Date(event.eventDays[0].date)
        if (chosenEvents.find(chosen => event.id === chosen)) {
          while (chosenEvents.find(chosen => event.id === chosen)) {
            random = Math.floor(Math.random() * this.events.length)
            event = this.events[random]
          }
        }
        this.hottestEvents.push({
          image: event.heroImageUrl,
          name: event.name,
          description: event.description,
          date: WEEK_DAYS[eventDate.getDay()] + ' ' + eventDate.getDate() + ' ' + MONTHS[eventDate.getMonth()],
          time: event.eventDays[0].startTime.substring(0, 5),
          link: '/events/' + event.id
        })
        chosenEvents.push(event.id)
      }
    },
    applyFilter (filter) {
      if (filter === 'ALL') {
        this.resetFilter()
        return
      }
      this.filter = filter
      // console.log(this.eventList.filter(item => item.categories.filter(cat => cat.name === filter)))
      const results = this.events.filter((event) => {
        return event.categories.some((item) => {
          return item.name.toUpperCase() === filter.toUpperCase()
        })
      })
      this.eventArray = []
      const that = this
      results.forEach(function (item) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
    },
    resetFilter () {
      this.filter = 'ALL'
      this.eventArray = []
      const that = this
      this.events.forEach(function (item) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
    }
  }
}
</script>

<style scoped>

</style>
