<template>
  <div>
    <CarouselItem class="w-full aspect-video h-96" :is-complex="false" :carousel-images="carouselImages" />
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
      <!--      TODO breadcrumbs-->
      <div class="grid grid-cols-1 sm:grid-cols-10 ">
        <div class="flex sm:col-span-10 justify-start">
          <h1>{{ poiDetails.name }}</h1>
        </div>
        <div class="flex divider sm:col-span-5" />
        <div v-if="!mobileDev" class="flex sm:col-span-5 justify-center">
          <h3>Booking Details</h3>
        </div>
        <div class="flex justify-start sm:col-span-5">
          <h4><b>{{ poiDetails.address }}</b></h4>
        </div>
        <div class="flex sm:col-span-5" />
        <div class="mt-4 text-justify sm:col-span-5">
          <p>{{ poiDetails.description }}</p>
        </div>
        <div v-if="mobileDev" class="flex justify-center mt-5">
          <h3>Booking Details</h3>
        </div>
        <div class="flex mt-5 sm:mt-0 sm:col-span-5 justify-center grid grid-rows-7 grid-cols-1">
          <div
            v-for="day in poiDetails.visitInfo.openingHours"
            :key="day.day"
            class="flex grid-rows-1 grid-cols-5 justify-center"
          >
            <div class="flex col-span-2 w-full justify-end">
              <p>
                {{ day.day.charAt(0).toUpperCase() + day.day.substring(1, 3).toLowerCase() }}
              </p>
              <div class="divider divider-horizontal before:bg-secondary after:bg-secondary" />
            </div>

            <p class="flex col-span-3 justify-start w-full">
              {{ day.openingHours.substring(0, 5) }}h - {{ day.closingHours.substring(0, 5) }}h
            </p>
          </div>
        </div>
      </div>
      <div v-if="poiDetails.visitInfo.url!==''" class="flex w-full justify-center mt-5 sm:mt-0 sm:justify-end">
        <a :href="poiDetails.visitInfo.url" target="_blank">
          <div class="btn btn-md btn-secondary rounded-full text-white normal-case">
            <b class="text-base">Visit the site</b>
          </div>
        </a>
      </div>
      <MapItem
        :markers="[{latitude: poiDetails.latitude, longitude: poiDetails.longitude, address: poiDetails.address}]"
      />

      <div class="flex divider" />
      <div class="flex w-full justify-start">
        <div
          v-for="(tag, index) in poiDetails.tags"
          :key="tag+index"
          class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer hover:bg-primary"
        >
          <NuxtLink :to="'/points-of-interest?tag=' + tag.name">
            {{ tag.name }}
          </NuxtLink>
        </div>
      </div>

      <h2 class="mt-8">
        Upcoming Events
      </h2>
      <CarouselItem :carousel-images="poiEvents" class="mt-4" />
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'PoiPage',
  title: 'Point of Interest',
  async asyncData ({ params }) {
    const poiDetailsData = await fetch(BACKEND_URL + '/api/v1/points-of-interest/get?id=' + params.poi).then(
      res => res.json()
    )
    const carouselImagesData = []
    if (poiDetailsData.pictures !== undefined) {
      poiDetailsData.pictures.forEach(function (picture) {
        carouselImagesData.push(
          {
            image: picture.path,
            name: '',
            description: '',
            date: '',
            time: '',
            link: '',
            path: '#'
          }
        )
      })
    }
    const poiEvents = []
    if (poiDetailsData.events !== undefined) {
      poiDetailsData.events.forEach(function (event) {
        poiEvents.push({
          heroImage: event.heroImage,
          name: event.name,
          description: event.description,
          date: event.eventDays[0].date,
          time: event.eventDays[0].startTime,
          link: event.infoUrl,
          path: '/events/' + event.id
        })
      })
    }
    return {
      poiDetails: poiDetailsData,
      carouselImages: carouselImagesData,
      poiEvents
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
          content: 'Attraction or point of interest in Amsterdam'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'point-of-interest'
        }
      ]
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