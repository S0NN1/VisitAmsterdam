<template>
  <div
    v-if="isFigure"
    class="card w-96 bg-base-100 shadow-xl bg-contain box-shadow-card-figure carousel-card"
  >
    <figure>
      <img :src="object.image" :alt="object.name">
    </figure>
  </div>
  <div v-else class="card w-96 bg-base-100 box-shadow-card carousel-card">
    <div class="card-body" style="max-height: 80%">
      <h2 class="card-title">
        {{ object.name }}
      </h2>
      <p>
        {{ object.description.substring(0, 700) }}{{ object.description.length > 700 ? '...' : '' }}
        <!--        //TODO STA MERDA DI TRUNCATE-->
      </p>
    </div>
    <div class="card-actions justify-end m-5" style="max-height: 20%">
      <h3>
        {{ object.date }} - {{ object.time }}h
      </h3>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { Paragraph } from 'beemovie'

export default Vue.extend({
  props: {
    isFigure: {
      type: Boolean,
      default: true
    },
    object: {
      type: Object,
      default: () => JSON.parse('{ "image": "https://via.placeholder.com/1920x1080", "name": "sus", "description": "' + Paragraph() + '", "date": "Wednesday 17", "time": "20.30", "link": "https://google.com"}')
    }
  },
  data () {
    return {}
  },
  methods: {}
})
</script>
