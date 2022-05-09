<template>
  <div v-if="isComplex">
    <div class="carousel w-full justify-center p-4">
      <!--      <div-->
      <!--        v-for="(image, index) in carouselImages"-->
      <!--        :id="'imageCarousel' + index"-->
      <!--        :key="index"-->
      <!--        class="carousel-item w-full"-->
      <!--      >-->
      <!--        <img :src="image.path" class="w-full">-->
      <!--      </div>-->
      <CardItem class="flex-none mr-10 w-fit max-w-2xl h-fit"/>
      <CardItem class="flex-none w-fit max-w-2xl" :is-figure="false" />
    </div>
    <div class="flex justify-center w-full py-2 gap-2">
      <a
        v-for="(image, index) in carouselImages"
        :key="'imageCarousel' + index"
        :href="'#imageCarousel'+ index"
        class="btn btn-circle btn-xs carousel-btn mt-5"
        :class="{'btn-active': activeIndex===index, 'ml-5': index>0}"
        @click="selectedIndex(index)"
      />
    </div>
  </div>
  <div v-else>
    <div class="carousel w-full">
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + index"
        :key="index"
        class="carousel-item w-full"
      >
        <img :src="image.path" class="w-full">
      </div>
    </div>
    <div class="flex justify-center w-full py-2 gap-2">
      <a
        v-for="(image, index) in carouselImages"
        :key="'imageCarousel' + index"
        :href="'#imageCarousel'+ index"
        class="btn btn-circle btn-xs carousel-btn mt-5"
        :class="{'btn-active': activeIndex===index, 'ml-5': index>0}"
        @click="selectedIndex(index)"
      />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  props: {
    carouselImages: {
      type: Array,
      default: () => [{ path: 'https://via.placeholder.com/1920x1080' }, { path: 'https://via.placeholder.com/1920x1080' }, { path: 'https://via.placeholder.com/1920x1080' }]
    },
    imagesLength: {
      type: Number,
      default: 3
    },
    isComplex: {
      type: Boolean,
      default: true
    }
  },
  data () {
    return {
      activeIndex: 0
    }
  },
  methods: {
    selectedIndex (index: number) {
      this.activeIndex = index
    }
  }
})
</script>
