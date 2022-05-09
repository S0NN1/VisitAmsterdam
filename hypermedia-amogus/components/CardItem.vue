<template>
  <div
    v-if="isFigure"
    class="card w-96 bg-base-100 shadow-xl bg-contain"
    :style="{ 'background-image': 'url(' + object.image + ')' }"
  >
    <!--    <figure class="h-100">-->
    <!--      <img :src="object.image" :alt="object.name">-->
    <!--    </figure>-->
  </div>
  <div v-else class="card w-96 bg-base-100 shadow-xl">
    <div class="card-body">
      <h2 class="card-title">
        {{ object.name }}
      </h2>
      <p>
        {{ object.description }}
      </p>
    </div>
    <div class="card-actions justify-end m-5">
      <h3 class="truncate">
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
      default: () => JSON.parse('{ "image": "https://via.placeholder.com/1920x1080", "name": "sus", "description": "' + Paragraph() + '", "date": "Wednesday 17", "time": "20.30"}')
    }
  },
  data () {
    return {}
  },
  methods: {}
})
</script>
