<!--TODO: Responsive-->
<template>
  <div v-if="isComplex">
    <div id="carousel" class="carousel w-full carousel-container pb-3">
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + index"
        :key="index"
        class="carousel-item w-full justify-center p-4"
      >
        <CardItem class="flex-none mr-10 w-fit max-w-2xl h-fit" :object="image" />
        <CardItem class="flex-none w-fit max-w-2xl" :card-type="'EVENT'" :object="image" />
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
    <div class="carousel w-full h-full">
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + index"
        :key="index"
        class="carousel-item w-full"
        :style="{'background-image': 'url(\'' + image.image + '\')'}"
        style="background-position: center; background-size: cover"
      />
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
    isComplex: {
      type: Boolean,
      default: true
    }
  },
  data () {
    return {
      activeIndex: 0,
      timerId: undefined
    }
  },
  mounted () {
    this.timer()
  },
  methods: {
    selectedIndex (index: number) {
      this.activeIndex = index
      this.clearTimer()
    },
    timer () {
      this.timerId = setTimeout(() => {
        if (this.isElementInViewport(document.getElementById('carousel'))) {
          if (this.activeIndex === this.carouselImages?.length - 1) {
            this.activeIndex = 0
          } else {
            this.activeIndex++
          }
          this.scrollToElement('#imageCarousel' + this.activeIndex)
        }
        this.timer()
      }, 10000)
    },
    clearTimer () {
      window.clearTimeout(this.timerId)
      this.timer()
    },
    isElementInViewport (el: any) {
      const rect = el.getBoundingClientRect()

      return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && /* or $(window).height() */
        rect.right <= (window.innerWidth || document.documentElement.clientWidth) /* or $(window).width() */
      )
    },
    scrollToElement (id: any) {
      // takes input id with hash
      // eg. #cafe-menu
      const el = document.querySelector(id)
      el && el.scrollIntoView({
        behavior: 'smooth',
        block: 'nearest',
        inline: 'nearest'
      })
    }
  }
})
</script>
