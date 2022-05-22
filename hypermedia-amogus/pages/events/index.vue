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
        <CarouselItem />
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
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer hover-bordered filter-shadow"
          :class="filter==='ALL' ? 'badge-primary' : 'badge-neutral'"
          @click="resetFilter"
        >
          All
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SUMMER' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('SUMMER')"
        >
          Summer
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='WINTER' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('WINTER')"
        >
          Winter
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SPRING' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('SPRING')"
        >
          Spring
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='AUTUMN' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('AUTUMN')"
        >
          Autumn
        </div>
      </div>
      <div class="divider mx-6" />
      <div class="w-full justify-center text-right">
        <p class="mx-6 text-lg">
          <b>{{ filter }} | {{ eventArray.length }} results</b>
        </p>
      </div>
      <div class="flex justify-center">
        <div class="w-3/4 grid gap-32 grid-cols-3 mb-20">
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

import { BACKEND_URL } from 'assets/js/constants'

export default {
  name: 'EventsPage',
  props: {},
  data () {
    return {
      filter: 'ALL',
      eventArray: [],
      events: []
    }
  },
  mounted () {
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
    async fetchEvents () {
      const that = this
      this.events = await this.$axios.$get(BACKEND_URL + '/api/v1/event/getAll')
      console.log(this.events)
      this.events.forEach(function (item, index) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
    },
    applyFilter (filter) {
      this.filter = filter
      // console.log(this.eventList.filter(item => item.categories.filter(cat => cat.name === filter)))
      const results = this.events.filter((event) => {
        return event.categories.some((item) => {
          return item.name.toUpperCase() === filter.toUpperCase()
        })
      })
      this.eventArray = []
      const that = this
      results.forEach(function (item, index) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
    },
    resetFilter () {
      this.filter = 'ALL'
      this.eventArray = []
      const that = this
      this.events.forEach(function (item, index) {
        const obj = that.craftEventObj(item)
        that.eventArray.push(obj)
      })
    }
  }
}
</script>

<style scoped>

</style>
