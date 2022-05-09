<template>
  <div v-if="isComplex">
    <div class="carousel w-full carousel-container pb-3">
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + index"
        :key="index"
        class="carousel-item w-full justify-center p-4"
      >
        <CardItem class="flex-none mr-10 w-fit max-w-2xl h-fit" />
        <CardItem class="flex-none w-fit max-w-2xl" :is-figure="false" />
      </div>
    </div>
    <div class="flex justify-center w-full gap-2">
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
import { Paragraph } from 'beemovie'

export default Vue.extend({
  props: {
    carouselImages: {
      type: Array,
      default: () => [{
        image: 'https://via.placeholder.com/1920x1080',
        name: 'sus',
        description: +Paragraph(),
        date: 'Wednesday 17',
        time: '20.30',
        link: 'https://google.com'
      }, {
        image: 'https://via.placeholder.com/1920x1080',
        name: 'sus',
        description: +Paragraph(),
        date: 'Wednesday 17',
        time: '20.30',
        link: 'https://google.com'
      }, {
        image: 'https://via.placeholder.com/1920x1080',
        name: 'sus',
        description: +Paragraph(),
        date: 'Wednesday 17',
        time: '20.30',
        link: 'https://google.com'
      }]
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
