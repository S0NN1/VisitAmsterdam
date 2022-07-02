<template>
  <div>
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-11">
      <h2 class="mb-5">
        Latest Events
      </h2>
      <CarouselItem :carousel-images="events" />
      <div class="flex w-full justify-end items-end mt-3">
        <NuxtLink
          class="flex underline decoration-2 decoration-secondary text-secondary text-xl"
          to="/events"
        >
          See more >
        </NuxtLink>
      </div>
      <div class="divider" />

      <div class="grid grid-cols-1 lg:grid-cols-2">
        <div>
          <div v-if="mobileDev" class="flex w-full justify-center mb-10">
            <CardItem :object="amsterdamImage" type="FIGURE" />
          </div>
          <h2 class="mb-5">
            Brief history of Amsterdam
          </h2>
          <p class="lg:m-4 text-justify">
            YĪN YĪN is inspired by the psychedelic Thai funk of the 60s and 70s and combines this with disco, funk and
            electronica to create drawn-out spaced-out improvisations and dance floor squats.
            YĪN YĪN's second album The Age Of Aquarius was released on Glitterbeat on March 4th. They released their
            debut The Rabbit That Hunts Tigers on tape, followed by two 7” vinyl singles (with the Paradiso Vinyl Club
            and Bongo Joe Records). The record took them to stages all over Europe.
          </p>
          <div class="text-center mb-0">
            <NuxtLink to="/about">
              <button
                aria-label="Go to About Us Page"
                class="btn btn-xl btn-primary rounded-full fill-white text-white my-4 sm:my-0 normal-case text-xl "
              >
                Discover &emsp;
                <IconsPaperPlaneIcon height="2rem" width="2rem" />
              </button>
            </NuxtLink>
          </div>
        </div>
        <div v-if="!mobileDev" class="flex w-full justify-center">
          <CardItem :object="amsterdamImage" type="FIGURE" />
        </div>
      </div>
    </div>

    <div
      :style="{'background-image': 'url(\'' + require('@/static/img/amsterdam-map.webp') + '\')'}"
      class="hero py-32 mt-16 parallaxBg"
    >
      <div class="hero-content text-center text-neutral-content">
        <div class="w-full">
          <h1 class="mb-5 text-5xl font-bold text-white drop-shadow-xl">
            Build your own itinerary!
          </h1>
          <NuxtLink :to="'/custom_itinerary'">
            <button
              aria-label="Create your Custom Itinerary"
              class="btn btn-lg btn-primary rounded-full bg-white border-none customItinerary mt-6 font-bold normal-case"
            >
              Start now!
            </button>
          </NuxtLink>
        </div>
      </div>
    </div>

    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-20">
      <h2 class="mb-8">
        Services provided by the city
      </h2>
      <div class="flex w-full justify-center">
        <div
          class="flex grid gap-10 grid-cols-1 lg:grid-cols-3 mb-20"
        >
          <div v-for="service in services" :key="service.id">
            <NuxtLink :to="'/services/' + service.id">
              <CardItem
                :object="service"
                card-type="MULTIPLE"
                class="hover:shadow-2xl transition ease-in-out duration-200 box-shadow-card"
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
import { BACKEND_URL, MONTHS, WEEK_DAYS } from '~/assets/js/constants'

export default Vue.extend({
  name: 'HomePage',
  title: 'Home',
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
    const latestEvents = await fetch(BACKEND_URL + '/api/v1/events/getUpcoming').then(
      res => res.json()
    )
    const craftedEvents = []
    latestEvents.forEach(
      (event) => {
        const parsedDate = new Date(event.eventDays[0].date)
        craftedEvents.push({
          id: event.id,
          name: event.name,
          description: event.description,
          heroImage: event.heroImage,
          date: WEEK_DAYS[parsedDate.getDay()] + ' ' + parsedDate.getDate() + ' ' + MONTHS[parsedDate.getMonth()],
          time: event.eventDays[0].startTime.substring(0, 5),
          path: '/events/' + event.id
        })
      }
    )
    return {
      services: craftedServices,
      events: craftedEvents
    }
  },
  data () {
    return {
      amsterdamImage: {
        heroImage: require('@/static/img/amsterdam-home.webp'),
        name: 'Amsterdam Home Image',
        description: 'Amsterdam Home Image',
        date: '',
        time: '',
        link: '',
        duration: 0
      },
      mediaQuery: null,
      mobileDev: false
    }
  },
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Amsterdam local guide website, '
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'index, Amsterdam, guide, tour, events, services, attractions'
        }
      ]
    }
  },
  mounted () {
    // eslint-disable-next-line nuxt/no-env-in-hooks
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 1024px)')
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
