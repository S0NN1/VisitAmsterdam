<template>
  <div
    class="flex hero-image-container w-full h-96 items-center justify-center bg-secondary bg-opacity-30 box-shadow-card-figure"
  >
    <h1>{{ title }}</h1>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'HeroImage',
  props: {
    imageUrl: {
      type: String,
      default: 'https://api.lorem.space/image/fashion?w=1920&h=600'
    },
    title: {
      type: String,
      default: 'IMG'
    }
  }
})
</script>

<style scoped>

</style>
