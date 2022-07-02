<template>
  <div>
    <CarouselItem
      v-if="!mobileDev"
      :carousel-images="[carouselImage]"
      :is-complex="false"
      class="w-full aspect-video h-96 rounded-none"
    />
    <div class="container mx-auto w-11/12 lg:w-10/12 h-full justify-center mt-14 mb-24">
      <div class="grid grid-cols-1 lg:grid-cols-10 ">
        <div class="flex lg:col-span-10 justify-start">
          <h1>{{ itineraryDetails.name }}</h1>
        </div>
        <div class="flex divider lg:col-span-5" />
        <div v-if="!mobileDev" class="flex lg:col-span-5 start grid grid-cols-3">
          <div class="flex" />
          <h3 class="flex col-span-2">
            Stops
          </h3>
        </div>
        <div class="mt-4 text-justify lg:col-span-5 mb-10 lg:mb-0">
          <p>{{ itineraryDetails.description }}</p>
        </div>
        <CarouselItem
          v-if="mobileDev"
          :carousel-images="[carouselImage]"
          :is-complex="false"
          class="w-full mb-10"
          style="height: 45vh"
        />
        <div v-if="mobileDev" class="flex justify-start mt-5">
          <h3>Stops</h3>
        </div>
        <div class="flex mt-5 lg:mt-0 lg:col-span-5 justify-center grid grid-cols-3">
          <div v-if="!mobileDev" class="flex" />
          <div class="h-96 bg-base-100 w-full box-shadow-card rounded-3xl col-span-3 lg:col-span-2 px-6 py-5">
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
        :class="mobileDev ? 'rounded-3xl' : ''"
        :height="!mobileDev ? '32rem' : '22rem'"
        :waypoints="waypoints"
        class="w-full"
      />
      <div class="flex divider" />
      <div
        class="flex grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 w-full justify-center items-center gap-x-6 gap-y-3 text-center mt-5 px-3"
      >
        <div
          v-for="tag in itineraryDetails.tags"
          :key="tag.name"
          class="flex badge p-5 font-bold w-full mx-auto tag-badge cursor-pointer text-xs lg:text-base text-[#232539] hover:bg-primary normal-case"
        >
          <NuxtLink :to="'/itineraries?tag=' + tag.name" class="w-full">
            {{ tag.name.substring(0, 1).toUpperCase() + tag.name.substring(1).toLowerCase() }}
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
