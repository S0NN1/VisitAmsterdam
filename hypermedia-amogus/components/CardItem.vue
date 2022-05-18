<template>
  <div
    v-if="cardType==='FIGURE'"
    class="card w-96 bg-base-100 shadow-xl bg-contain box-shadow-card-figure carousel-card"
  >
    <figure>
      <img :src="object.image" :alt="object.name">
    </figure>
  </div>
  <div v-else-if="cardType==='EVENT'" class="card w-96 bg-base-100 box-shadow-card carousel-card">
    <div class="card-body line-clamp-3" style="max-height: 80%">
      <h2 class="card-title">
        {{ object.name }}
      </h2>
      <p>
        {{ object.description }}
      </p>
    </div>
    <div class="card-actions justify-end m-5" style="max-height: 20%">
      <h3>
        {{ object.date }} - {{ object.time }}h
      </h3>
    </div>
  </div>
  <div v-else-if="cardType==='MULTIPLE'">
    <div class="card w-64 aspect-square bg-base-100 shadow-xl no-rounded-bottom">
      <figure class="box-shadow-card-figure">
        <img :src="object.image" :alt="object.name">
      </figure>
      <div class="card-body items-center">
        <h2 class="card-title">
          {{ object.name }}
        </h2>
      </div>
    </div>
  </div>
  <div
    v-else-if="cardType==='ITINERARY'"
    class="card w-full bg-base-100 box-shadow-card carousel-card no-rounded-left aspect-video h-full "
  >
    <div class="box-shadow-card-figure-alt h-full">
      <div class="card-body">
        <h2 class="card-title">
          {{ object.name }}
        </h2>
        <h3 class="mb-2 card-title">
          Duration: {{ object.duration }}h
        </h3>
        <p class="line-clamp-3 justify-end">
          {{ object.description }}
        </p>
      </div>
      <div class="flex card-actions p-9 justify-end items-end">
        <NuxtLink
          class="flex underline decoration-2 decoration-sky-500 text-sky-500"
          :to="`/events/${object.name}`"
        >
          See more >
        </NuxtLink>
      </div>
    </div>
  </div>
  <div
    v-else-if="cardType==='COMPLEX'"
    class=" w-full carousel-card"
  >
    <div class="grid w-full grid-cols-3 gap-2" style="min-height: 100%">
      <figure>
        <img class="h-full rounded-xl" :src="object.image" :alt="object.name">
      </figure>
      <figure class="col-span-2 row-span-2">
        <img class="h-full rounded-xl" :src="object.image" :alt="object.name">
      </figure>
      <figure>
        <img :src="object.image" class="h-full rounded-xl" :alt="object.name">
      </figure>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { Paragraph } from 'beemovie'

export default Vue.extend({
  props: {
    cardType: {
      type: String,
      default: 'FIGURE'
    },
    object: {
      type: Object,
      default: () => JSON.parse('{ "image": "https://via.placeholder.com/1920x1080", "name": "sus", "description": "' + Paragraph() + '", "date": "Wednesday 17", "time": "20.30", "link": "https://google.com", "duration": 8}')
    }
  },
  data () {
    return {}
  },
  methods: {}
})
</script>
