<template>
  <div class="container mx-auto w-10/12 justify-center mb-40">
    <h1 class="flex w-full mb-9">
      All itineraries
    </h1>
    <h3 class="flex w-full mb-5">
      Filters
    </h3>
    <div class="flex w-full justify-start">
      <div
        v-for="(tag, index) in tags"
        :key="tag+index"
        class="badge mr-4 p-5 font-bold tag-badge text-white"
        :class="activeTag===index ? 'badge-primary': 'badge-neutral'"
      >
        {{ tag }}
      </div>
    </div>
    <div class="divider mb-5" />
    <div class="flex w-full justify-end font-bold mb-5">
      <span>All</span>
      <span class="divider divider-horizontal before:bg-secondary after:bg-secondary" />
      <span>{{ itineraries.length }}   {{ itineraries.length > 1 ? 'results' : 'result' }}</span>
    </div>
    <div
      v-for="(itinerary, index) in itineraries"
      :key="itinerary.name + index"
      class="flex w-full justify-center mb-10"
    >
      <CardItem :card-type="'ITINERARY'" class="mr-4" :object="itinerary" />
      <CardItem :card-type="'COMPLEX'" />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { Paragraph } from 'beemovie'

export default Vue.extend({
  name: 'Itineraries',
  props: {
    tags: {
      type: Array,
      default: () => ['Summer', 'Winter', 'All itineraries']
    },
    activeTag: {
      type: Number,
      default: 0
    },
    itineraries: {
      type: Array,
      default: () => [JSON.parse('{ "name": "Test Itinerary", "duration": 0, "description": "' + Paragraph() + '", "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} '), JSON.parse('{ "name": "Test Itinerary", "duration": 0, "description": "' + Paragraph() + '", "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} ')]
    }
  }
})
</script>

<style scoped>

</style>
