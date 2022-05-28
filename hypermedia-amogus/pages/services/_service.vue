<template>
  <div>
    <div class="container mx-auto w-10/12 justify-center mt-14 mb-24">
      <!--      TODO breadcrumbs-->
      <div class="grid grid-cols-1 sm:grid-cols-10 ">
        <div class="flex sm:col-span-10 justify-start">
          <h1>{{ serviceDetails.name }}</h1>
        </div>
        <div class="flex divider sm:col-span-5"/>
        <div class="flexsm:col-span-5"/>
        <div class="flex justify-start sm:col-span-5 grid grid-rows-2">
          <h4 class="flex">
            <b>{{ serviceDetails.address }}</b>
          </h4>
          <div
            class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer hover:bg-primary"
          >
            <NuxtLink :to="'/services?tag=' + serviceDetails.serviceType.name">
              {{ serviceDetails.serviceType.name }}
            </NuxtLink>
          </div>
        </div>
        <div v-if="!mobileDev" class="flex sm:col-span-5 justify-center items-end align-baseline pb-3">
          <h3>Booking Details</h3>
        </div>
        <div v-if="!mobileDev" class="sm:col-span-5">
          <MapItem
            :markers="[{latitude: serviceDetails.latitude, longitude: serviceDetails.longitude, address: serviceDetails.address}]"
          />
        </div>
        <div v-if="mobileDev" class="flex justify-center mt-5">
          <h3>
            Booking Details
          </h3>
        </div>
        <div class="flex mt-5 sm:mt-0 sm:col-span-5 justify-center grid grid-rows-3 grid-cols-1">
          <div class="flex justify-center grid grid-rows-7 grid-cols-1 row-span-2 sm:row-span-1">
            <div
              v-for="day in serviceDetails.visitInfo.openingHours"
              :key="day.day"
              class="flex grid-rows-1 grid-cols-5 justify-center"
            >
              <div class="flex col-span-2 w-full justify-end">
                <p>
                  {{ day.day.charAt(0).toUpperCase() + day.day.substring(1, 3).toLowerCase() }}
                </p>
                <div class="divider divider-horizontal before:bg-secondary after:bg-secondary"/>
              </div>

              <p class="flex col-span-3 justify-start w-full">
                {{ day.openingHours.substring(0, 5) }}h - {{ day.closingHours.substring(0, 5) }}h
              </p>
            </div>
          </div>
          <div v-if="serviceDetails.visitInfo.url!==''" class="flex grid grid-cols-3 justify-center mt-5 sm:mt-10 ">
            <div class="flex col-span-2"/>
            <div class="flex">
              <div class="btn btn-md btn-secondary rounded-full text-white normal-case">
                <a :href="serviceDetails.visitInfo.url" target="_blank">
                  <b class="text-base">Visit the site</b>
                </a>
              </div>
            </div>
          </div>
          <div v-if="!mobileDev" class="flex"/>
        </div>
        <div v-if="mobileDev">
          <MapItem
            :markers="[{latitude: serviceDetails.latitude, longitude: serviceDetails.longitude, address: serviceDetails.address}]"
          />
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'ServicePage',
  async asyncData ({ params }) {
    const serviceDetailsData = await fetch(BACKEND_URL + '/api/v1/services/get?id=' + params.service).then(
      res => res.json()
    )
    return {
      serviceDetails: serviceDetailsData
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
