<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All points of interest
      </h2>
      <AllCardsSection :page-type="'POIS'" :elements="pois" />
    </div>
  </div>
</template>

<script lang="ts">

import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'PointsOfInterestPage',
  async asyncData () {
    const pois = await fetch(BACKEND_URL + '/api/v1/poi/getAll').then(
      res => res.json()
    )
    const craftedPois: any[] = []
    pois.forEach(
      (poi: any) => {
        craftedPois.push({
          id: poi.id,
          name: poi.name,
          image: poi.poiPictures[0].path
        })
      }
    )
    return {
      pois: craftedPois
    }
  },
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>
