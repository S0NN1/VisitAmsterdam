<template>
  <div class="mb-40">
    <div class="container mx-auto w-10/12 justify-center mt-20">
      <h2>Latest Events</h2>
      <CarouselItem />
      <div class="divider" />

      <div class="grid grid-cols-2">
        <div>
          <h2>Brief history of Amsterdam</h2>
          <p class="m-4 text-justify">
            YĪN YĪN is inspired by the psychedelic Thai funk of the 60s and 70s and combines this with disco, funk and
            electronica to create drawn-out spaced-out improvisations and dance floor squats.
            YĪN YĪN's second album The Age Of Aquarius was released on Glitterbeat on March 4th. They released their
            debut The Rabbit That Hunts Tigers on tape, followed by two 7” vinyl singles (with the Paradiso Vinyl Club
            and Bongo Joe Records). The record took them to stages all over Europe.
          </p>
          <div class="text-center">
            <div class="btn btn-lg btn-primary rounded-full">
              Discover
            </div>
          </div>
        </div>
        <div class="flex justify-center">
          <CardItem type="FIGURE" class="w-3/4" />
        </div>
      </div>
    </div>
    <div class="w-full" />
    <div class="container mx-auto w-10/12 justify-center mt-20">
      <h2>Services provided by the city</h2>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'HomePage',
  async asyncData () {
    const services = await fetch(BACKEND_URL + '/api/v1/services/getAll').then(
      res => res.json()
    )
    const craftedServices: any[] = []
    services.forEach(
      (service: any) => {
        craftedServices.push({
          id: service.id,
          name: service.name,
          image: service.servicePicture[0].path
        })
      }
    )
    return {
      services: craftedServices
    }
  }
})
</script>

<style scoped>

</style>
