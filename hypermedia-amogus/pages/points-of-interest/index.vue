<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All points of interest
      </h2>
      <AllCardsSection :page-type="'points-of-interest'" :elements="pois"/>
    </div>
  </div>
</template>

<script lang="ts">

import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'PointsOfInterestPage',
  async asyncData () {
    const pois = await fetch(BACKEND_URL + '/api/v1/points-of-interest/getAll').then(
      res => res.json()
    )
    return {
      pois
    }
  },
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>
