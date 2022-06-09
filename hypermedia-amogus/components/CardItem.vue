<!--TODO: Responsive-->
<template>
  <div
    v-if="cardType==='FIGURE'"
    class="card w-full bg-base-100 bg-contain box-shadow-card-figure carousel-card"
  >
    <figure>
      <img :src="object.heroImage" :alt="object.name">
    </figure>
  </div>
  <div v-else-if="cardType==='EVENT'" class="card w-full bg-base-100 carousel-card shadow-xl">
    <div class="card-body" style="max-height: 80%">
      <h2 class="card-title text-sm md:text-base lg:text-2xl">
        {{ object.name }}
      </h2>
      <div class="line-clamp-5">
        <p>
          {{ object.description }}
        </p>
      </div>
    </div>
    <div class="card-actions justify-end m-5" style="max-height: 20%">
      <h3 class="text-s lg:text-xl">
        {{ object.date }} - {{ object.time }}h
      </h3>
    </div>
  </div>
  <div v-else-if="cardType==='MULTIPLE'">
    <div class="card w-full aspect-square bg-base-100 shadow-xl no-rounded-bottom">
      <figure class="box-shadow-card-figure">
        <img :src="object.heroImage" :alt="object.name">
      </figure>
      <div class="card-body items-center">
        <h2 class="card-title text-sm md:text-2xl lg:text-2xl">
          {{ object.name }}
        </h2>
      </div>
    </div>
  </div>
  <div v-else-if="cardType==='SEARCH'">
    <div class="card w-full aspect-square bg-base-100 shadow-xl no-rounded-bottom">
      <div class="card-body box-shadow-card-figure-alt justify-start">
        <h2 class="card-title text-sm lg:text-2xl">
          {{ object.name }}
        </h2>
        <div class="line-clamp-3">
          <p class="text-xs">
            {{ object.description }}
          </p>
        </div>
        <div class="badge badge-neutral">
          {{ object.type }}
        </div>
      </div>
      <figure class="box-shadow-card-figure">
        <img :src="object.heroImage" :alt="object.name">
      </figure>
    </div>
  </div>
  <div
    v-else-if="cardType==='ITINERARY'"
    class="card w-full bg-base-100 box-shadow-card carousel-card no-rounded-left aspect-video h-full "
  >
    <div class="box-shadow-card-figure-alt h-full">
      <div class="card-body">
        <h3>
          {{ object.name }}
        </h3>
        <h4 class="mb-2">
          Duration: {{ object.duration }}h
        </h4>
        <p class="line-clamp-3 justify-end">
          {{ object.description }}
        </p>
      </div>
      <div class="flex card-actions p-9 justify-end items-end">
        <NuxtLink
          class="flex underline decoration-2 decoration-sky-500 text-sky-500"
          :to="`/itineraries/${object.id}`"
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
        <img class="h-full rounded-xl" :src="object.heroImage" :alt="object.name">
      </figure>
      <figure class="col-span-2 row-span-2">
        <img class="h-full rounded-xl" :src="object.heroImage" :alt="object.name">
      </figure>
      <figure>
        <img :src="object.heroImage" class="h-full rounded-xl" :alt="object.name">
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
      default: () => JSON.parse('{ "heroImage": "https://via.placeholder.com/1920x1080", "name": "sus", "description": "' + Paragraph() + '", "date": "Wednesday 17", "time": "20.30", "link": "https://google.com", "duration": 8}')
    }
  },
  data () {
    return {}
  },
  methods: {}
})
</script>
