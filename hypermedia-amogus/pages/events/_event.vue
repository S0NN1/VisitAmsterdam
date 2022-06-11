<template>
  <div>
    <CarouselItem class="w-full aspect-video h-96" :is-complex="false" :carousel-images="carouselImages" />
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
      <!--      TODO breadcrumbs-->
      <div class="grid grid-cols-10">
        <div :class="!mobileDev ? 'col-span-4' : 'col-span-10'">
          <h1>{{ eventDetails.name }}</h1>
          <div class="divider" />
          <div class="grid grid-cols-10">
            <div class="flex items-center" :class="!mobileDev ? 'col-span-5' : 'col-span-10'">
              <div v-if="eventDetails.eventDays.length > 1">
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
              </div>
              <div v-else>
                <h4>
                  <b>
                    {{
                      new Date(eventDetails.eventDays[0].date).getDate() + ' ' + months[new Date(eventDetails.eventDays[0].date).getMonth()] + ' ' + new Date(eventDetails.eventDays[0].date).getFullYear()
                    }}
                  </b>
                </h4>
              </div>
            </div>
            <div />
            <!--            TODO pipe-->
            <div class="flex items-center text-right justify-end" :class="!mobileDev ? 'col-span-4' : 'col-span-10'">
              <h4>
                <NuxtLink :to="'/points-of-interest/' + eventDetails.location.id">
                  <b>{{
                    eventDetails.location.name
                  }}</b>
                </NuxtLink>
              </h4>
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
                  new Date(day.date).getDate() + '/' + new Date(day.date).getMonth() + '/' + new Date(day.date).getFullYear()
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
                v-if="eventDetails.infoUrl!==''"
                :class="(eventDetails.infoUrl!=='' && !mobileDev) ? '' : 'col-span-2 mb-2'"
              >
                <a :href="eventDetails.infoUrl" target="_blank">
                  <div class="btn btn-md btn-secondary rounded-full text-white">
                    Official Website
                  </div>
                </a>
              </div>
              <div
                v-if="eventDetails.bookingUrl!==''"
                :class="(eventDetails.bookingUrl!=='' && !mobileDev) ? '' : 'col-span-2'"
              >
                <a :href="eventDetails.bookingUrl" target="_blank">
                  <div class="btn btn-md btn-secondary rounded-full text-white">
                    Book Now
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="divider" />
      <div class="flex w-full justify-start">
        <div
          v-for="category in eventDetails.categories"
          :key="category.name"
          class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer hover:bg-primary"
        >
          <NuxtLink :to="'/events?category=' + category.name">
            {{ category.name }}
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
  }
})
</script>

<style scoped>

</style>
