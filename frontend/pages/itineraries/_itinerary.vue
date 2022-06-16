<template>
  <div>
    <CarouselItem
      v-if="!mobileDev"
      class="w-full aspect-video h-96"
      :is-complex="false"
      :carousel-images="[carouselImage]"
    />
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
      <!--      TODO breadcrumbs-->
      <div class="grid grid-cols-1 sm:grid-cols-10 ">
        <div class="flex sm:col-span-10 justify-start">
          <h1>{{ itineraryDetails.name }}</h1>
        </div>
        <div class="flex divider sm:col-span-5" />
        <div v-if="!mobileDev" class="flex sm:col-span-5 start grid grid-cols-3">
          <div class="flex" />
          <h3 class="flex col-span-2">
            Stops
          </h3>
        </div>
        <div class="mt-4 text-justify sm:col-span-5 mb-10 sm:mb-0">
          <p>{{ itineraryDetails.description }}</p>
        </div>
        <CarouselItem
          v-if="mobileDev"
          class="w-full mb-10"
          :is-complex="false"
          style="height: 45vh"
          :carousel-images="[carouselImage]"
        />
        <div v-if="mobileDev" class="flex justify-start mt-5">
          <h3>Stops</h3>
        </div>
        <div class="flex mt-5 sm:mt-0 sm:col-span-5 justify-center grid grid-cols-3">
          <div v-if="!mobileDev" class="flex" />
          <div class="h-96 bg-base-100 w-full box-shadow-card rounded-3xl col-span-3 sm:col-span-2 px-6 py-5">
            <div class="card-body h-full text-ellipsis overflow-auto box-scrollbar p-0">
              <div v-for="stop in itineraryDetails.stops" :key="stop.name" class="mt-1">
                <NuxtLink :to="'/points-of-interest/' + stop.id">
                  <li
                    class="text-secondary py-2 px-3 rounded-xl hover:bg-primary group transition-all hover:text-white"
                  >
                    <b class="text-lg text-black group-hover:text-white">{{ stop.name }}</b><br>
                    <p class="text-gray-400 group-hover:text-white">
                      {{ stop.address }}
                    </p>
                  </li>
                </NuxtLink>
              </div>
            </div>
          </div>
        </div>
      </div>
      <MapItem
        :waypoints="waypoints"
        :height="mobileDev ? '15rem': ''"
        :class="mobileDev ? 'rounded-3xl' : ''"
      />
      <div class="flex divider" />
      <div class="flex w-full justify-start">
        <div
          v-for="tag in itineraryDetails.tags"
          :key="tag.name"
          class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer hover:bg-primary"
        >
          <NuxtLink :to="'/itineraries?tag=' + tag.name">
            {{ tag.name }}
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import { BACKEND_URL, MONTHS } from 'assets/js/constants'

export default Vue.extend({
  name: 'ItineraryPage',
  title: 'Itinerary',
  async asyncData ({ params }) {
    const itineraryDetailsData = await fetch(BACKEND_URL + '/api/v1/itineraries/get?id=' + params.itinerary).then(
      res => res.json()
    )
    const waypoints = []
    itineraryDetailsData.stops.forEach((stop) => {
      waypoints.push(
        {
          latitude: stop.latitude,
          longitude: stop.longitude,
          address: stop.address
        }
      )
    }
    )
    const carouselImage = {
      image: itineraryDetailsData.heroImage,
      name: '',
      description: '',
      date: '',
      time: '',
      link: ''
    }
    return {
      itineraryDetails: itineraryDetailsData,
      waypoints,
      carouselImage
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
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Itinerary or tour in Amsterdam'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'itinerary, tour'
        }
      ]
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
<style>
/* width */
.box-scrollbar::-webkit-scrollbar {
  width: 10px;
}

/* Track */
.box-scrollbar::-webkit-scrollbar-track {
  background: #e4e5ee;
  border-radius: 10px;
  margin-right: 20px;
}

/* Handle */
.box-scrollbar::-webkit-scrollbar-thumb {
  background: #0d99ff;
  border-radius: 10px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #16215b;
}
</style>
