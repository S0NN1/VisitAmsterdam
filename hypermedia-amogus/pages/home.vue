<template>
  <div class="mb-40">
    <div class="container mx-auto w-10/12 justify-center mt-20">
      <h2>Latest Events</h2>
      <CarouselItem />
      <div class="divider" />

      <div class="grid grid-cols-1 sm:grid-cols-2">
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
            <div class="btn btn-lg btn-primary rounded-full fill-white my-4 sm:my-0 normal-case">
              Discover &emsp;
              <IconsPaperPlane width="1.7rem" height="1.7rem" />
            </div>
          </div>
        </div>
        <div class="flex justify-center">
          <CardItem type="FIGURE" class="sm:w-3/4" :object="amsterdamImage" />
        </div>
      </div>
    </div>

    <div
      class="hero py-32 mt-16 parallaxBg"
      :style="{'background-image': 'url(\'' + require('@/static/img/amsterdam-map.png') + '\')'}"
    >
      <div class="hero-content text-center text-neutral-content">
        <div class="w-full">
          <h1 class="mb-5 text-5xl font-bold text-white drop-shadow-xl">
            Build your own itinerary!
          </h1>
          <button
            class="btn btn-lg btn-primary rounded-full bg-white border-none customItinerary mt-6 font-bold normal-case"
          >
            Start now!
          </button>
        </div>
      </div>
    </div>

    <div class="container mx-auto w-10/12 justify-center mt-20">
      <h2>Services provided by the city</h2>
      <div class="flex justify-center">
        <div class="w-full grid gap-32 mb-20 m-4 grid-cols-1 sm:grid-cols-3">
          <div v-for="service in services" :key="service.id">
            <NuxtLink :to="'/services/' + service.id">
              <CardItem
                :object="service"
                card-type="MULTIPLE"
                class="hover:shadow-2xl transition ease-in-out duration-200"
              />
            </NuxtLink>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'HomePage',
  async asyncData () {
    const services = await fetch(BACKEND_URL + '/api/v1/services/getAll').then(
      res => res.json()
    )
    const craftedServices = []
    services.forEach(
      (service) => {
        craftedServices.push({
          id: service.id,
          name: service.name,
          heroImage: service.heroImage
        })
      }
    )
    return {
      services: craftedServices
    }
  },
  data () {
    return {
      amsterdamImage: {
        heroImage: 'https://images.unsplash.com/photo-1605101100278-5d1deb2b6498?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        name: '',
        description: '',
        date: '',
        time: '',
        link: '',
        duration: 0
      },
      mediaQuery: null,
      mobileDev: false
    }
  },
  mounted () {
    // eslint-disable-next-line nuxt/no-env-in-hooks
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

<style scoped>
.customItinerary {
  color: #F15A28;
  font-size: 1.5rem;
}

.customItinerary:hover {
  color: #ffffff;
}

.parallaxBg {
  background-position: center;
  background-size: cover;
  background-attachment: fixed
}
</style>
