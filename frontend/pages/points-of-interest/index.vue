<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All points of interest
      </h2>
      <AllCardsSection :elements="pois" :page-type="'points-of-interest'" />
    </div>
  </div>
</template>

<script>

import { BACKEND_URL } from '~/assets/js/constants'

export default {
  name: 'PointsOfInterestPage',
  title: 'Points Of Interest',
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
  },
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Attractions and points of interest in Amsterdam'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'points-of-interest, attractions'
        }
      ]
    }
  }
}
</script>
