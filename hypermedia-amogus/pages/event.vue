<template>
  <div>
    <CarouselItem class="w-full" :is-complex="false" style="height: 25vw" :carousel-images="carouselImages" />
    <div v-if="ready" class="container mx-auto w-10/12 justify-center mt-14 mb-24">
      <div class="grid grid-cols-10">
        <div class="col-span-4">
          <h1>{{ eventDetails.name }}</h1>
          <div class="divider" />
          <div class="grid grid-cols-10">
            <div class="flex col-span-5 items-center">
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
            <div class="flex col-span-4 items-center text-right justify-end">
              <h4><b>{{ eventDetails.location.name }}</b></h4>
            </div>
          </div>
          <div class="mt-4 text-justify">
            <p>{{ eventDetails.description }}</p>
          </div>
        </div>
        <div class="col-span-2" />
        <div class="col-span-4">
          <div class="mt-10">
            <h2>Booking Details</h2>
            <div class="mb-4">
              <div v-for="day in eventDetails.eventDays" class="badge badge-lg m-2 p-4">
                {{ day.date }} &bull; {{ day.startTime.substring(0, 5) }} - {{ day.endTime.substring(0, 5) }}
              </div>
            </div>
            <h3><b>Price:</b> &euro; {{ parseFloat(eventDetails.price).toFixed(2) }}</h3>
            <h3>
              <b>Availability:</b>
              <div class="badge badge-lg badge-success text-white">
                Yes
              </div>
            </h3>
            <div class="w-full justify-center text-center mt-12 grid grid-cols-2">
              <div v-if="eventDetails.infoUrl!==''" :class="eventDetails.infoUrl!=='' ? '' : 'col-span-2'">
                <a :href="eventDetails.infoUrl" target="_blank">
                  <div class="btn btn-md btn-secondary rounded-full text-white">
                    Official Website
                  </div>
                </a>
              </div>
              <div v-if="eventDetails.bookingUrl!==''" :class="eventDetails.bookingUrl!=='' ? '' : 'col-span-2'">
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
      <div v-for="category in eventDetails.categories" class="badge badge-lg badge-neutral p-4">
        <b>{{ category.name }}</b>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { Paragraph } from 'beemovie'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'EventPage',
  data () {
    return {
      eventDetails: {
        type: Object,
        default: null
      },
      carouselImages: [] as Array<any>,
      ready: false,
      months: MONTHS,
      testDesc: Paragraph()
    }
  },
  async mounted () {
    this.eventDetails = await this.$axios.$get(BACKEND_URL + '/api/v1/event/getById?id=' + this.$route.query.id)
    this.carouselImages = this.craftCarouselImages(this.eventDetails)
    this.ready = true
  },
  methods: {
    craftCarouselImages (event: { type?: ObjectConstructor; default?: null; pictures?: any; }) {
      const pictureObj: any[] = []
      event.pictures.forEach(function (picture, index) {
        pictureObj.push(
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
      return pictureObj
    }
  }
})
</script>

<style scoped>

</style>
