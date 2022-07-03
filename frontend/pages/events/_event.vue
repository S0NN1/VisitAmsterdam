<template>
  <div>
    <CarouselItem :carousel-images="carouselImages" :is-complex="false" class="w-full aspect-video h-96" />
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
      <div class="grid grid-cols-10">
        <div :class="!mobileDev ? 'col-span-4' : 'col-span-10'">
          <h1>{{ eventDetails.name }}</h1>
          <div class="divider" />
          <div class="grid grid-cols-10">
            <div class="flex items-center col-span-10">
              <span v-if="eventDetails.eventDays.length > 1">
                <h4>
                  <b>
                    {{
                      new Date(eventDetails.eventDays[0].date).getDate() + ' ' + months[new Date(eventDetails.eventDays[0].date).getMonth()] + ' ' + new Date(eventDetails.eventDays[0].date).getFullYear()
                    }} -
                    {{
                      new Date(eventDetails.eventDays[eventDetails.eventDays.length - 1].date).getDate() + ' ' + months[new Date(eventDetails.eventDays[eventDetails.eventDays.length - 1].date).getMonth()] + ' ' + new Date(eventDetails.eventDays[eventDetails.eventDays.length - 1].date).getFullYear()
                    }}
                  </b>
                </h4>
              </span>
              <span v-else>
                <h4>
                  <b>
                    {{
                      new Date(eventDetails.eventDays[0].date).getDate() + ' ' + months[new Date(eventDetails.eventDays[0].date).getMonth()] + ' ' + new Date(eventDetails.eventDays[0].date).getFullYear()
                    }}
                  </b>
                </h4>
              </span>
              <span class="divider divider-horizontal before:bg-secondary after:bg-secondary col-span-2" />
              <span>
                <h4>
                  <NuxtLink :to="'/points-of-interest/' + eventDetails.location.id">
                    <b>{{
                      eventDetails.location.name
                    }}</b>
                  </NuxtLink>
                </h4>
              </span>
            </div>
          </div>
          <div class="mt-4 text-justify">
            <p>{{ eventDetails.description }}</p>
          </div>
        </div>
        <div v-if="!mobileDev" class="col-span-2" />
        <div :class="!mobileDev ? 'col-span-4' : 'col-span-10'">
          <div class="mt-10">
            <h2>Booking Details</h2>
            <div class="mb-4">
              <div v-for="day in eventDetails.eventDays" class="badge badge-lg m-2 p-4">
                {{
                  new Date(day.date).getDate() + '/' + (new Date(day.date).getMonth() + 1) + '/' + new Date(day.date).getFullYear()
                }} &bull;
                {{ day.startTime.substring(0, 5) }} - {{ day.endTime.substring(0, 5) }}
              </div>
            </div>
            <h3><b>Price:</b> &euro; {{ parseFloat(eventDetails.price).toFixed(2) }}</h3>
            <h3>
              <b>Availability: </b>
              <div class="badge badge-lg badge-success text-white">
                Yes
              </div>
            </h3>
            <div class="w-full justify-center text-center mt-12 grid grid-cols-2">
              <div
                v-if="eventDetails.infoUrl!==null"
                :class="!mobileDev ? '' : 'col-span-2 mb-2'"
              >
                <a :href="eventDetails.infoUrl" target="_blank">
                  <button
                    aria-label="Go to event url"
                    class="btn btn-lg btn-secondary rounded-full text-white normal-case"
                  >
                    Official Website
                  </button>
                </a>
              </div>
              <div
                v-if="eventDetails.bookingUrl!==''"
                :class="(eventDetails.bookingUrl!=='' && !mobileDev) ? '' : 'col-span-2'"
              >
                <a :href="eventDetails.bookingUrl" target="_blank">
                  <button
                    aria-label="Go to booking url"
                    class="btn btn-lg btn-secondary rounded-full text-white normal-case"
                  >
                    Book Now
                  </button>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="divider" />
      <div
        class="flex grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 w-full justify-center items-center gap-x-6 gap-y-3 text-center mt-5 px-3"
      >
        <div
          v-for="category in eventDetails.categories"
          :key="category.name"
          class="flex badge p-5 font-bold w-full mx-auto tag-badge cursor-pointer text-xs lg:text-base text-[#232539] hover:bg-primary normal-case"
        >
          <NuxtLink :to="'/events?category=' + category.name" class="w-full">
            {{ category.name.substring(0, 1).toUpperCase() + category.name.substring(1).toLowerCase() }}
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from '~/assets/js/constants'

export default Vue.extend({
  name: 'EventPage',
  title: 'Event',
  async asyncData ({ params }) {
    const eventDetailsData = await fetch(BACKEND_URL + '/api/v1/events/get?id=' + params.event).then(
      res => res.json()
    )
    const carouselImagesData = []
    eventDetailsData.pictures.forEach(function (picture) {
      carouselImagesData.push(
        {
          image: picture.path,
          name: '',
          description: '',
          date: '',
          time: '',
          link: ''
        }
      )
    })
    return {
      eventDetails: eventDetailsData,
      carouselImages: carouselImagesData
    }
  },
  data () {
    return {
      months: MONTHS,
      mediaQuery: {
        type: Object,
        default: null
      },
      mobileDev: false
    }
  },
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Event Amsterdam'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'event'
        }
      ]
    }
  },
  mounted () {
    // eslint-disable-next-line nuxt/no-env-in-hooks
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 1024px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
  }
})
</script>

<style scoped>

</style>
