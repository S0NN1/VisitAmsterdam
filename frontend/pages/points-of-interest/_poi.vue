<template>
  <div>
    <CarouselItem :carousel-images="carouselImages" :is-complex="false" class="w-full aspect-video h-96" />
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
        <div class="flex w-full justify-center mt-5 sm:mt-0 sm:justify-end sm:col-span-5">
          <div
            class="btn btn-md btn-secondary rounded-full text-white normal-case"
            @click="addToItinerary(poiDetails)"
          >
            <b class="text-base">Add to itinerary</b>
          </div>
        </div>
        <div
          v-if="poiDetails.visitInfo.url!==''"
          class="flex w-full justify-center mt-5 sm:mt-0 sm:justify-end sm:col-span-5"
        >
          <a :href="poiDetails.visitInfo.url" target="_blank">
            <div class="btn btn-md btn-secondary rounded-full text-white normal-case">
              <b class="text-base">Visit the site</b>
            </div>
          </a>
        </div>
      </div>
      <transition
        name="fade"
      >
        <div
          v-if="toast"
          class="flex items-center justify-between w-3/5 lg:w-1/5 p-4 bg-white border rounded-md shadow-sm absolute top-10 right-0 lg:top-28 lg:right-10"
        >
          <div class="flex items-center">
            <svg
              class="w-8 h-8 text-green-500"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                clip-rule="evenodd"
                d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                fill-rule="evenodd"
              />
            </svg>
            <p class="ml-3 text-base font-bold text-green-600">
              Successfully added stop to itinerary!
            </p>
          </div>
          <span class="inline-flex items-center cursor-pointer">
            <svg
              class="w-4 h-4 text-gray-600"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path d="M6 18L18 6M6 6l12 12" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
            </svg>
          </span>
        </div>
      </transition>
      <MapItem
        :height="!mobileDev ? '24rem' : '22rem'"
        :markers="[{latitude: poiDetails.latitude, longitude: poiDetails.longitude, address: poiDetails.address}]"
        class="w-full"
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
      mobileDev: false,
      toast: false,
      timerId: undefined
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
      this.mediaQuery = matchMedia('(max-width: 1024px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
  },
  methods: {
    addToItinerary (poiDetails) {
      this.$store.commit('custom_itinerary/ADD_STOP', poiDetails)
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      }, 2000)
    }
  }
}
)
</script>
<style scoped>
.fade-enter-active, .fade-leave-active {
  transition: opacity .5s;
}

.fade-enter, .fade-leave-to {
  opacity: 0;
}
</style>
