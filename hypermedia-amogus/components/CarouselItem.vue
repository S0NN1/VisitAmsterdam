<template>
  <div>
    <div v-for="(image, index) in carouselImages" :key="index" class="carousel w-full">
      <div id="image{{index}}" class="carousel-item w-full">
        <img src="{{image.path}}" class="w-full">
      </div>
      <div v-for="(image, index) in carouselImages" :key="index" class="flex justify-center w-full py-2 gap-2">
        <a
          href="#image{{index}}"
          class="btn btn-circle btn-xs carousel-btn mt-5"
          :class="{'btn-active': index===0, 'mr-5': index>0}"
        />
      </div>
      <button class="btn btn-primary">
        Button
      </button>
    </div>
  </div>
</template>

<script lang="ts">

export default {
  props: {
    carouselImages: {
      type: Array,
      default: () => [{ path: 'https://via.placeholder.com/150' }, { path: 'https://via.placeholder.com/150' }, { path: 'https://via.placeholder.com/150' }]
    }
  },
  data () {
    return {
      isActive: false

    }
  }
}
</script>
