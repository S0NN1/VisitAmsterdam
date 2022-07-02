<template>
  <div v-if="isComplex">
    <div
      id="carousel"
      class="carousel w-full h-3/4 lg:h-96 carousel-container pb-3"
    >
      <div
        v-for="(image, index) in carouselImages"
        :id="'imageCarousel' + image.heroImage.replaceAll('.webp', '').replaceAll('/', '') + index"
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
        :key="'imageCarousel' + image.heroImage.replaceAll('.webp', '').replaceAll('/', '') + index"
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
        :id="'imageCarousel' + image.image.replaceAll('.webp', '').replaceAll('/', '') + index"
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
        :key="'imageCarousel' + image.image.replaceAll('.webp', '').replaceAll('/', '') + index"
        :class="{'btn-active': activeIndex===index, 'ml-5': index>0}"
        class="btn btn-circle btn-xs carousel-btn mt-5"
        @click="selectedIndex(index)"
      />
    </div>
  </div>
</template>

<script>
import Vue from 'vue'

/**
 * Carousel used for displaying single topic's pictures, the hottest events (events page), recommended itineraries and
 * upcoming events (single point of interest page)
 */
export default Vue.extend({
  props: {
    /**
     * Images used for the creation of the carousel.
     * @values [], [{...}, {...}]
     */
    carouselImages: {
      type: Array,
      default: () => []
    },
    /**
     * Flag used to differentiate the two types of CarouselItem.
     * @values true,false
     */
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
  methods: {
    /**
     * Method capturing the start of a touch event on the carousel item, storing the first position.
     * @param event touch start.
     * @public
     */
    handleTouchStart (event) {
      this.tx = event.touches[0].clientX
    },
    /**
     * Method capturing the end of a touch event on the carousel item, it compares the first and last position: if the
     * first one is minor than the second one it means the user scrolled to the left and vice-versa.
     * Based on the scroll direction the activeIndex and the carousel are changed.
     * @param event touch start.
     * @public
     */
    handleTouchEnd (event) {
      const te = event.changedTouches[0].clientX
      if (this.tx < te && this.activeIndex !== 0) {
        this.activeIndex--
      } else if (this.tx > te && this.activeIndex !== this.carouselImages?.length - 1) {
        this.activeIndex++
      }
      if (this.isElementInViewport(document.getElementById('carousel'))) {
        const imageName = this.isComplex ? this.carouselImages[this.activeIndex].heroImage.replaceAll('.webp', '').replaceAll('/', '') : this.carouselImages[this.activeIndex].image.replaceAll('.webp', '').replaceAll('/', '')
        this.scrollToElement('#imageCarousel' + imageName + this.activeIndex)
      }
    },
    /**
     * Method used when clicking a carousel point to change the selected carousel-item, it scrolls to the selected item.
     * @param index changed index.
     * @public
     */
    selectedIndex (index) {
      this.activeIndex = index
      const imageName = this.isComplex ? this.carouselImages[this.activeIndex].heroImage.replaceAll('.webp', '').replaceAll('/', '') : this.carouselImages[this.activeIndex].image.replaceAll('.webp', '').replaceAll('/', '')
      this.scrollToElement('#imageCarousel' + imageName + this.activeIndex)
      // this.clearTimer()
    },
    /**
     * Method checking if provided element is visible to the user.
     * @param el element to be analyzed.
     * @returns {boolean} true if it's visible, false otherwise.
     */
    isElementInViewport (el) {
      return el != null && (
        el.getBoundingClientRect().top >= 0 &&
        el.getBoundingClientRect().left >= 0 &&
        el.getBoundingClientRect().bottom <= (window.innerHeight || document.documentElement.clientHeight) && /* or $(window).height() */
        el.getBoundingClientRect().right <= (window.innerWidth || document.documentElement.clientWidth) /* or $(window).width() */
      )
    },
    /**
     * Method firing the scrollIntoView action to the element with the provided id.
     * @param id element id.
     */
    scrollToElement (id) {
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
