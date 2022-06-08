<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All itineraries
      </h2>
      <AllCardsSection :page-type="'itineraries'" :elements="itineraries" />
    </div>
  </div>
</template>

<script lang="ts">

import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'ItinerariesPage',
  async asyncData () {
    const itineraries = await fetch(BACKEND_URL + '/api/v1/itineraries/getAll').then(
      res => res.json()
    )
    return {
      itineraries
    }
  },
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>
