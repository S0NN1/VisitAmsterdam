<template>
  <div>
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
      <div class="grid grid-cols-1 lg:grid-cols-10 ">
        <div class="flex lg:col-span-10 justify-start">
          <h1>{{ serviceDetails.name }}</h1>
        </div>
        <div class="flex divider lg:col-span-5" />
        <div class="flexlg:col-span-5" />
        <div class="flex justify-start lg:col-span-5 grid grid-rows-2">
          <h4 class="flex">
            <b>{{ serviceDetails.address }}</b>
          </h4>
          <div
            class="flex badge p-5 font-bold tag-badge cursor-pointer text-xs lg:text-base text-[#232539] hover:bg-primary normal-case"
          >
            <NuxtLink :to="'/services?tag=' + serviceDetails.serviceTag.name" class="w-full">
              {{
                serviceDetails.serviceTag.name.substring(0, 1).toUpperCase() + serviceDetails.serviceTag.name.substring(1).toLowerCase()
              }}
            </NuxtLink>
          </div>
        </div>
        <div v-if="mobileDev">
          <MapItem
            :height="!mobileDev ? '24rem' : '22rem'"
            :markers="[{latitude: serviceDetails.latitude, longitude: serviceDetails.longitude, address: serviceDetails.address}]"
            class="w-full"
          />
        </div>
        <div v-if="!mobileDev" class="flex lg:col-span-5 justify-center items-end align-baseline pb-3">
          <h3>Booking Details</h3>
        </div>
        <div v-if="!mobileDev" class="lg:col-span-5">
          <MapItem
            :height="!mobileDev ? '24rem' : '22rem'"
            :markers="[{latitude: serviceDetails.latitude, longitude: serviceDetails.longitude, address: serviceDetails.address}]"
            class="w-full"
          />
        </div>
        <div v-if="mobileDev" class="flex justify-center mt-5">
          <h3>
            Booking Details
          </h3>
        </div>
        <div class="flex mt-5 lg:mt-0 lg:col-span-5 justify-center grid grid-rows-3 grid-cols-1">
          <div class="flex justify-center grid grid-rows-7 grid-cols-1 row-span-2 lg:row-span-1">
            <div
              v-for="day in serviceDetails.visitInfo.openingHours"
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
          <div v-if="serviceDetails.visitInfo.url!==null" class="flex grid grid-cols-3 justify-center mt-5 lg:mt-10 ">
            <div v-if="!mobileDev" class="flex" />
            <div class="flex col-span-3 lg:col-span-1 w-full justify-center lg:justify-end">
              <div class="btn btn-md btn-secondary rounded-full text-white normal-case">
                <a :href="serviceDetails.visitInfo.url" target="_blank">
                  <b class="text-base">Visit the site</b>
                </a>
              </div>
            </div>
            <div v-if="!mobileDev" class="flex" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'ServicePage',
  title: 'Service',
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
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Amsterdam service'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'service'
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
