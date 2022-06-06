<template>
  <div>
    <button
      data-tooltip-target="tooltip-hover"
      data-tooltip-trigger="hover"
      type="button"
      class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
    >
      Tooltip hover
    </button>
    <div
      id="tooltip-hover"
      role="tooltip"
      class="inline-block absolute invisible z-10 py-2 px-3 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip bg-red-400 dark:bg-gray-700"
    >
      Tooltip content
      <div class="tooltip-arrow" data-popper-arrow />
    </div>
    <HeroImage />
    <div class="container mx-auto w-10/12 justify-center">
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
        <h2 class="flex w-full mb-9">
          All events
        </h2>
        <AllCardsSection :page-type="'events'" :elements="events" />
      </div>
    </div>
  </div>
</template>

<script>

import Vue from 'vue'
import { BACKEND_URL, MONTHS, WEEK_DAYS } from 'assets/js/constants'

export default Vue.extend({
  name: 'EventsPage',
  async asyncData () {
    const events = await fetch(BACKEND_URL + '/api/v1/events/getUpcoming').then(
      res => res.json()
    )
    const craftedEvents = []
    events.forEach(
      (event) => {
        craftedEvents.push({
          id: event.id,
          name: event.name,
          heroImage: event.heroImage
        })
      }
    )
    return {
      events
    }
  },
  data () {
    return {
      filter: 'All',
      hottestEvents: []
    }
  },
  mounted () {
    // eslint-disable-next-line nuxt/no-env-in-hooks
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
    /**
     * Populate two different lists:
     * - events, containing all the upcoming events
     * - hotEvents, containing a small collection of the previous category
     * @returns {Promise<void>}
     */
    async fetchEvents () {
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
          heroImage: event.heroImage,
          name: event.name,
          description: event.description,
          date: WEEK_DAYS[eventDate.getDay()] + ' ' + eventDate.getDate() + ' ' + MONTHS[eventDate.getMonth()],
          time: event.eventDays[0].startTime.substring(0, 5),
          link: '/events/' + event.id
        })
        chosenEvents.push(event.id)
      }
    }
  }
})
</script>

<style scoped>

</style>
