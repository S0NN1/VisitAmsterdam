<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All itineraries
      </h2>
      <AllCardsSection :page-type="'ITINERARY'" :elements="itineraries" />
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
    const craftedItineraries: any[] = []
    itineraries.forEach(
      (itinerary: any) => {
        const poisImages: any[] = []
        itinerary.stops.forEach((stop) => {
          poisImages.push(stop.poiPictures[0])
        }
        )
        craftedItineraries.push({
          id: itinerary.id,
          name: itinerary.name,
          description: itinerary.description,
          duration: itinerary.duration,
          images: poisImages
        })
      }
    )
    return {
      itineraries: craftedItineraries
    }
  },
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>
