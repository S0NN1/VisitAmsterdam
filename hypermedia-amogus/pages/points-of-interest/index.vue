<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h1 class="mx-6">
        All points of interest
      </h1>
      <h3 class="mx-6">
        Filters
      </h3>
      <div class="ml-8">
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer hover-bordered filter-shadow"
          :class="filter==='ALL' ? 'badge-primary' : 'badge-neutral'"
        >
          All
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SUMMER' ? 'badge-primary' : 'badge-neutral'"
        >
          Summer
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='WINTER' ? 'badge-primary' : 'badge-neutral'"
        >
          Winter
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SPRING' ? 'badge-primary' : 'badge-neutral'"
        >
          Spring
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='AUTUMN' ? 'badge-primary' : 'badge-neutral'"
        >
          Autumn
        </div>
      </div>
      <div class="divider mx-6" />
      <div class="w-full justify-center text-right">
        <p class="mx-6 text-lg">
          <b>{{ filter }} | {{ pois.length }} results</b>
        </p>
      </div>
      <div class="flex justify-center">
        <div class="w-3/4 grid gap-32 grid-cols-3 mb-20">
          <NuxtLink
            v-for="poi in pois"
            :key="poi.id"
            :to="'/points-of-interest/' + poi.id"
          >
            <CardItem :object="poi" card-type="MULTIPLE" />
          </NuxtLink>
        </div>
      </div>
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
