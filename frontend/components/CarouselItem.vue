<!--TODO: Responsive-->
<template>
  <div v-if="isComplex">
    <div
      id="carousel"
      class="carousel w-full h-3/4 lg:h-96 carousel-container pb-3"
    >
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + index"
        :key="index"
        class="carousel-item w-full justify-center"
        @touchend="handleTouchEnd"
        @touchstart="handleTouchStart"
      >
        <NuxtLink :to="image.path">
          <div class=" grid grid-cols-1 gap-y-5 lg:gap-4 lg:grid-cols-2 justify-items-center">
            <CardItem :card-type="'FIGURE'" :object="image" class="flex sm:mb-5 " />
            <CardItem :card-type="'EVENT'" :object="image" class="flex mt-1" />
          </div>
        </NuxtLink>
      </div>
    </div>
    <div class="flex justify-center w-full gap-2">
      <a
        v-for="(image, index) in carouselImages"
        :key="'imageCarousel' + index"
        :class="{'btn-active': activeIndex===index, 'ml-5': index>0}"
        class="btn btn-circle btn-xs carousel-btn mt-5"
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
        :style="{'background-image': 'url(\'' + image.image + '\')'}"
        class="carousel-item w-full"
        style="background-position: center; background-size: cover"
        @touchend="handleTouchEnd"
        @touchstart="handleTouchStart"
      />
    </div>
    <div v-if="carouselImages.length>1" class="flex justify-center w-full py-2 gap-2">
      <a
        v-for="(image, index) in carouselImages"
        :key="'imageCarousel' + index"
        :class="{'btn-active': activeIndex===index, 'ml-5': index>0}"
        class="btn btn-circle btn-xs carousel-btn mt-5"
        @click="selectedIndex(index)"
      />
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { Paragraph } from 'beemovie'

export default Vue.extend({
  props: {
    carouselImages: {
      type: Array,
      default: () => [{
        heroImage: 'https://via.placeholder.com/1920x1080',
        name: 'sus',
        description: +Paragraph(),
        date: 'Wednesday 17',
        time: '20.30',
        link: 'https://google.com'
      }, {
        heroImage: 'https://via.placeholder.com/1920x1080',
        name: 'sus',
        description: +Paragraph(),
        date: 'Wednesday 17',
        time: '20.30',
        link: 'https://google.com'
      }, {
        heroImage: 'https://via.placeholder.com/1920x1080',
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
      timerId: undefined,
      tx: 0
    }
  },
  mounted () {
    this.timer()
  },
  methods: {
    handleTouchStart (event) {
      this.tx = event.touches[0].clientX
    },
    handleTouchEnd (event) {
      const te = event.changedTouches[0].clientX
      if (this.tx < te && this.activeIndex !== 0) {
        this.activeIndex--
      } else if (this.tx > te && this.activeIndex !== this.carouselImages?.length - 1) {
        this.activeIndex++
      }
      this.clearTimer()
      if (this.isElementInViewport(document.getElementById('carousel'))) {
        this.scrollToElement('#imageCarousel' + this.activeIndex)
      }
    },
    selectedIndex (index) {
      this.activeIndex = index
      this.scrollToElement('#imageCarousel' + this.activeIndex)
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
    isElementInViewport (el) {
      return el != null && (
        el.getBoundingClientRect().top >= 0 &&
        el.getBoundingClientRect().left >= 0 &&
        el.getBoundingClientRect().bottom <= (window.innerHeight || document.documentElement.clientHeight) && /* or $(window).height() */
        el.getBoundingClientRect().right <= (window.innerWidth || document.documentElement.clientWidth) /* or $(window).width() */
      )
    },
    scrollToElement (id) {
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
