<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 h-full">
    <transition
      name="fade"
    >
      <div
        v-if="toast"
        class="flex items-center justify-between w-3/5 lg:w-1/5 p-4 bg-white border rounded-md shadow-sm absolute top-0 right-0 lg:top-28 lg:right-10"
      >
        <div class="flex items-center">
          <svg
            class="w-8 h-8 text-green-500"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              clip-rule="evenodd"
              d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
              fill-rule="evenodd"
            />
          </svg>
          <p class="ml-3 text-base font-bold text-green-600">
            {{ toastText }}
          </p>
        </div>
        <span class="inline-flex items-center cursor-pointer">
          <svg
            class="w-4 h-4 text-gray-600"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path d="M6 18L18 6M6 6l12 12" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
          </svg>
        </span>
      </div>
    </transition>
    <div class="flex h-12" />
    <div class="flex grid grid-cols-12 gap-3 mt-10 w-full justify-start">
      <div class="col-span-6 justify-start">
        <h1 class="text-4xl inline-flex">
          <span class="mr-10">{{
            $store.state.custom_itinerary.name === '' ? 'Custom Itinerary' : $store.state.custom_itinerary.name
          }}</span>
          <span><IconsEditIcon :height="'2.5rem'" :width="'2.5rem'" class="fill-secondary" /></span>
        </h1>
      </div>
      <div class="flex col-span-6 justify-end">
        <IconsDownloadIcon :height="'2.5rem'" :width="'2.5rem'" class="fill-secondary" />
      </div>
      <div class="divider col-span-4" />
      <div class="flex col-span-8" />
      <div class="col-span-6 justify-start">
        <p class=" inline-flex font-bold text-2xl">
          <span class="mr-2">
            Duration:
          </span>
          <span>{{ ' ' + '' === '' ? '0h' : $store.state.custom_itinerary.name + 'h' }} </span>
        </p>
      </div>
      <div class="flex col-span-6" />
      <div class="col-span-12 justify-start mt-5">
        <h2 class=" inline-flex">
          Stops
        </h2>
      </div>
    </div>
    <div class="flex mt-10 justify-center">
      <div class="h-fit bg-base-100 w-full box-shadow-card rounded-3xl px-6 py-5">
        <div
          class="card-body h-full text-ellipsis overflow-auto box-scrollbar p-0 m-5 grid grid-cols-4 group transition-all"
        >
          <div
            v-for="(stop, index) in stops"
            :key="stop.name"
            class="flex mt-1 w-full col-span-4"
          >
            <li
              class="text-secondary py-2 px-3 rounded-xl w-full col-span-2"
            >
              <b class="text-lg text-black">{{ stop.name }}</b><br>
              <p class="text-gray-400">
                {{ stop.address }}
              </p>
            </li>
            <div class="flex w-full col-span-2 justify-center grid grid-cols-4">
              <div class="flex" />
              <div class="flex justify-center">
                <button @click="index!==0 ? move(true, index) : null">
                  <IconsArrowUpIcon
                    :class="index!==0 ? 'fill-secondary' : 'fill-neutral'"
                    :height="'2.5rem'"
                    :width="'2.5rem'"
                  />
                </button>
              </div>
              <div class="flex justify-center">
                <IconsArrowDownIcon
                  :class="index!==stops.length-1 ? 'fill-secondary' : 'fill-neutral'"
                  :height="'2.5rem'"
                  :width="'2.5rem'"
                  @click="index!==stops.length-1 ? move(false, index) : null"
                />
              </div>
              <div class="flex w-full justify-end">
                <button
                  aria-label="Go to About Page"
                  class="btn btn-neutral normal-case text-base "
                  @click="remove(index)"
                >
                  Delete
                </button>
              </div>
            </div>
          </div>
        </div>
        <div class="flex col-span-4 justify-center ">
          <div class="flex" />

          <div class="w-20 h-20 col-span-2">
            <NuxtLink to="/points-of-interest">
              <button class="w-full h-full btn btn-circle btn-secondary">
                <svg
                  class="fill-white"
                  height="3rem"
                  viewBox="0 0 24 24"
                  width="3rem"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path d="M24 10h-10v-10h-4v10h-10v4h10v10h4v-10h10z" />
                </svg>
              </button>
            </NuxtLink>
          </div>
          <div class="flex" />
        </div>
      </div>
    </div>
    <div class="flex h-full">
      <MapItem
        :class="mobileDev ? 'rounded-3xl' : ''"
        :waypoints="waypoints"
        class="w-full h-64 lg:h-96"
      />
    </div>
  </div>
</template>

<script>
import { BACKEND_URL } from 'assets/js/constants'

export default {
  name: 'CustomItineraryPage',
  title: 'Custom Itinerary',
  async asyncData ({ store }) {
    const pois = await fetch(BACKEND_URL + '/api/v1/points-of-interest/getAll').then(
      res => res.json()
    )
    const stops = []
    pois.forEach(function (poi) {
      if (store.state.custom_itinerary.stops.includes(poi.id)) {
        stops.push(poi)
      }
    })
    const waypoints = []
    stops.forEach((stop) => {
      waypoints.push(
        {
          latitude: stop.latitude,
          longitude: stop.longitude,
          address: stop.address
        }
      )
    })
    return {
      stops,
      waypoints
    }
  },
  data () {
    return {
      toast: false,
      timerId: undefined,
      toastText: '',
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
          content: 'Your Own Custom Itinerary'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'custom-itinerary, custom-tour'
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
  },
  methods: {
    move (isUp, index) {
      const newIndex = isUp ? index - 1 : index + 1
      this.moveItem(index, newIndex)
      this.reorderItinerary(this.stops)
    },
    moveItem (from, to) {
      const f = this.stops.splice(from, 1)[0]
      this.stops.splice(to, 0, f)
    },
    remove (index) {
      this.stops.splice(index, 1)
      this.removeItinerary(index)
    },
    removeItinerary (id) {
      this.$store.commit('custom_itinerary/REMOVE_STOP', id)
      this.toastText = 'Successfully removed stop from itinerary!'
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      }, 2000)
    },
    reorderItinerary (stops) {
      this.$store.commit('custom_itinerary/REORDER_STOP', stops)
      this.toastText = 'Successfully updated itinerary!'
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      }, 2000)
    },
    renameItinerary (name) {
      this.$store.commit('custom_itinerary/RENAME', name)
      this.toastText = 'Successfully renamed itinerary!'
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      }, 2000)
    }
  }
}
</script>

<style scoped>
</style>
