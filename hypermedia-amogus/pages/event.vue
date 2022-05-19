<template>
  <div>
    <CarouselItem class="w-full" :is-complex="false" style="height: 25vw" :carousel-images="carouselImages"/>
    <div class="container mx-auto w-10/12 justify-center">
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { BACKEND_URL } from 'assets/js/constants'
import {Paragraph} from "beemovie";

export default Vue.extend({
  name: 'EventPage',
  data () {
    return {
      eventDetails: {
        type: Object,
        default: null
      },
      carouselImages: {
        type: Array,
        default: null
      }
    }
  },
  async mounted () {
    const event = await this.$axios.$get(BACKEND_URL + '/api/v1/event/getById?id=' + this.$route.query.id)
    const carouselImages = this.craftCarouselImages(event)
    console.log(carouselImages)
    console.log(event)
  },
  methods: {
    craftCarouselImages (event: { pictures: { forEach: (arg0: (picture: any, index: any) => void) => void; path: any; }; }) {
      const pictureObj: any[] = []
      event.pictures.forEach(function (picture, index) {
        pictureObj.push(
          {
            image: event.pictures.path,
            name: '',
            description: '',
            date: '',
            time: '',
            link: ''
          }
        )
      })
      return pictureObj
    }
  }
})
</script>

<style scoped>

</style>
