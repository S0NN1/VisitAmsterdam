<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All itineraries
      </h2>
      <AllCardsSection :page-type="'itineraries'" :mobile="mobileDev" :elements="itineraries" />
    </div>
  </div>
</template>

<script>

import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'ItinerariesPage',
  async asyncData () {
    const itineraries = await fetch(BACKEND_URL + '/api/v1/itineraries/getAll').then(
      res => res.json()
    )
    console.log(itineraries)
    return {
      itineraries
    }
  },
  data () {
    return {
      filter: 'All',
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
