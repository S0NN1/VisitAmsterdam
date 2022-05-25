<template>
  <div>
    <CarouselItem class="w-full" :is-complex="false" style="height: 45vh" :carousel-images="carouselImages" />
    <div class="container mx-auto w-10/12 justify-center mt-14 mb-24">
      <!--      TODO breadcrumbs-->
      <div class="grid grid-cols-10">
        <div :class="!mobileDev ? 'col-span-4' : 'col-span-10'">
          <h1>{{ poiDetails.name }}</h1>
          <div class="divider" />
          <div class="flex items-center">
            <h4><b>{{ poiDetails.address }}</b></h4>
          </div>
        </div>
        <div class="mt-4 text-justify">
          <p>{{ poiDetails.description }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'PoiPage',
  async asyncData ({ params }) {
    const poiDetailsData = await fetch(BACKEND_URL + '/api/v1/poi/get?id=' + params.poi).then(
      res => res.json()
    )
    const carouselImagesData: any[] = []
    if (poiDetailsData.poiPictures !== undefined) {
      poiDetailsData.poiPictures.forEach(function (picture: { path: any }) {
        carouselImagesData.push(
          {
            image: picture.path,
            name: '',
            description: '',
            date: '',
            time: '',
            link: ''
          }
        )
      })
    }
    return {
      poiDetails: poiDetailsData,
      carouselImages: carouselImagesData
    }
  },
  data () {
    return {
      months: MONTHS,
      mediaQuery: {
        type: Object,
        default: null
      },
      mobileDev: false
    }
  },
  mounted () {
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 700px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
  }
})
</script>
