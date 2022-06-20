<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center lg:mt-16">
    <transition
      name="fade"
    >
      <div
        v-if="toast"
        class="flex items-center justify-between w-3/5 lg:w-1/5 p-4 bg-white border rounded-md shadow-sm absolute top-10 right-0 lg:top-28 lg:right-10"
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
    <div class="grid grid-cols-2 lg:grid-cols-12 gap-1 lg:gap-2 mt-16 w-full justify-start">
      <div class="flex col-span-2 lg:col-span-6 justify-start">
        <h1 class="text-4xl inline-flex">
          <input
            ref="itineraryName"
            :class="editItineraryName ? 'input-bordered input-secondary' : ''"
            :disabled="!editItineraryName"
            :value="$store.state.custom_itinerary.name === '' ? 'Custom Itinerary' : $store.state.custom_itinerary.name"
            class="input mr-10 text-lg lg:text-3xl"
            type="text"
          >
          <span class="flex items-center">
            <button aria-label="Toggle edit itinerary name" @click="editName">
              <IconsEditIcon
                v-if="!editItineraryName"
                :height="!mobileDev ? '2.5rem' : '2rem'"
                :width="!mobileDev ? '2.5rem' : '2rem'"
                class="fill-secondary"
              />
              <IconsSaveIcon
                v-if="editItineraryName"
                :height="!mobileDev ? '2.5rem' : '2rem'"
                :width="!mobileDev ? '2.5rem' : '2rem'"
                class="fill-secondary"
              />
            </button>
          </span>
        </h1>
      </div>
      <div v-if="!mobileDev" class="flex col-span-6 justify-end">
        <button onclick="print()">
          <IconsDownloadIcon :height="'2.5rem'" :width="'2.5rem'" class="fill-secondary" />
        </button>
      </div>
      <div class="flex divider col-span-2" />
      <div v-if="!mobileDev" class="flex col-span-8" />
      <div class="col-span-2 lg:col-span-12 text-center lg:text-left">
        <h2 class=" inline-flex">
          Stops
        </h2>
      </div>
    </div>
    <div class="flex mt-10 justify-center">
      <div class="h-fit bg-base-100 w-full box-shadow-card rounded-3xl px-6 py-5">
        <div
          v-if="!mobileDev"
          class="card-body h-full text-ellipsis overflow-auto box-scrollbar p-0 m-5 grid grid-cols-4"
        >
          <div
            v-for="(stop, index) in $store.state.custom_itinerary.stops"
            :key="stop.name"
            class="flex mt-1 w-full col-span-4"
          >
            <li
              class="text-secondary py-2 px-3 rounded-xl w-full"
            >
              <b class="text-lg text-black">{{ stop.name }}</b><br>
              <p class="text-gray-400">
                {{ stop.address }}
              </p>
            </li>
            <div class="flex w-full col-span-2 justify-center grid grid-cols-4">
              <div class="flex" />
              <div class="flex justify-center items-center">
                <button @click="index!==0 ? move(true, index) : null">
                  <IconsArrowUpIcon
                    :class="index!==0 ? 'fill-secondary' : 'fill-neutral'"
                    :height="'2.5rem'"
                    :width="'2.5rem'"
                  />
                </button>
              </div>
              <div class="flex justify-center items-center">
                <button @click="index!==$store.state.custom_itinerary.stops.length-1 ? move(false, index) : null">
                  <IconsArrowDownIcon
                    :class="index!==$store.state.custom_itinerary.stops.length-1 ? 'fill-secondary' : 'fill-neutral'"
                    :height="'2.5rem'"
                    :width="'2.5rem'"
                  />
                </button>
              </div>
              <div class="flex w-full justify-end">
                <button
                  aria-label="Delete Stop"
                  class="btn btn-neutral normal-case text-base "
                  @click="remove(index)"
                >
                  Delete
                </button>
              </div>
            </div>
          </div>
        </div>
        <div v-else class="card-body h-full text-ellipsis overflow-auto box-scrollbar p-0 m-5">
          <div
            v-for="(stop, index) in $store.state.custom_itinerary.stops"
            :key="stop.name"
            class="flex mt-1 w-full grid grid-cols-2"
          >
            <li
              class="text-secondary py-2 px-3 rounded-xl w-full col-span-2"
            >
              <b class="text-md text-black">{{ stop.name }}</b><br>
              <p class="text-gray-400 text-sm">
                {{ stop.address }}
              </p>
            </li>
            <div class="flex w-full justify-center">
              <div class="flex justify-center items-center">
                <button @click="index!==0 ? move(true, index) : null">
                  <IconsArrowUpIcon
                    :class="index!==0 ? 'fill-secondary' : 'fill-neutral'"
                    :height="'2.5rem'"
                    :width="'2.5rem'"
                  />
                </button>
              </div>
              <div class="flex justify-center items-center">
                <IconsArrowDownIcon
                  :class="index!==$store.state.custom_itinerary.stops.length-1 ? 'fill-secondary' : 'fill-neutral'"
                  :height="'2.5rem'"
                  :width="'2.5rem'"
                  @click="index!==$store.state.custom_itinerary.stops.length-1 ? move(false, index) : null"
                />
              </div>
            </div>
            <div class="flex w-full justify-end">
              <button
                aria-label="Delete Stop"
                class="btn btn-neutral normal-case text-sm rounded-full "
                @click="remove(index)"
              >
                Delete
              </button>
            </div>
          </div>
        </div>
        <div class="flex col-span-2 lg:col-span-4 justify-center ">
          <div v-if="!mobileDev" class="flex" />

          <div class="w-16 lg:w-20 h-16 lg:h-20 lg:col-span-2">
            <NuxtLink to="/points-of-interest">
              <button class="w-full h-full btn btn-circle btn-secondary">
                <svg
                  :height="mobileDev ? '2rem' : '3rem'"
                  :width="mobileDev ? '2rem' : '3rem'"
                  class="fill-white"
                  viewBox="0 0 24 24"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path d="M24 10h-10v-10h-4v10h-10v4h10v10h4v-10h10z" />
                </svg>
              </button>
            </NuxtLink>
          </div>
          <div v-if="!mobileDev" class="flex" />
        </div>
      </div>
    </div>
    <div
      class="flex h-fit"
    >
      <MapItem
        ref="map"
        :class="mobileDev ? 'rounded-3xl' : ''"
        :height="!mobileDev ? '24rem' : '22rem'"
        :waypoints="createWaypoints()"
        class="w-full mb-10"
      />
    </div>
    <div v-if="mobileDev" class="flex w-full justify-center mb-4">
      <button
        aria-label="Download Itinerary"
        class="btn btn-lg btn-secondary rounded-full fill-white text-white my-4 sm:my-0 normal-case"
        onclick="print()"
      >
        Download &emsp;
        <IconsDownloadIcon height="1.7rem" width="1.7rem" />
      </button>
    </div>
    <div v-if="$store.state.custom_itinerary.stops.length>0" class="flex w-full justify-center mb-8">
      <button
        aria-label="Delete Itinerary"
        class="btn btn-lg btn-error rounded-full fill-white text-white sm:my-0 normal-case "
        @click="deleteItinerary"
      >
        Delete Itinerary &emsp;
        <IconsCloseIcon height="1.7rem" width="1.7rem" />
      </button>
    </div>
  </div>
</template>

<script>

export default {
  name: 'CustomItineraryPage',
  title: 'Custom Itinerary',
  data () {
    return {
      toast: false,
      timerId: undefined,
      toastText: '',
      mediaQuery: {
        type: Object,
        default: null
      },
      mobileDev: false,
      editItineraryName: false,
      itineraryName: ''
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
      this.mediaQuery = matchMedia('(max-width: 1024px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
  },
  methods: {
    createWaypoints () {
      const waypoints = []
      this.$store.state.custom_itinerary.stops.forEach((stop) => {
        waypoints.push(
          {
            latitude: stop.latitude,
            longitude: stop.longitude,
            address: stop.address
          }
        )
      })
      return waypoints
    },
    deleteItinerary () {
      this.$store.commit('custom_itinerary/RESET_STATE')
      this.toastText = 'Successfully deleted!'
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      })
      this.$refs.map.updateWaypoints(this.createWaypoints())
      this.$forceUpdate()
    },
    editName () {
      this.editItineraryName = !this.editItineraryName
      if (!this.editItineraryName) {
        this.renameItinerary(this.$refs.itineraryName.value)
      }
      this.$forceUpdate()
    },
    move (isUp, index) {
      const newIndex = isUp ? index - 1 : index + 1
      this.reorderItinerary(index, newIndex)
      this.$refs.map.updateWaypoints(this.createWaypoints())
      this.$forceUpdate()
    },
    remove (index) {
      this.removeItinerary(index)
      this.$refs.map.updateWaypoints(this.createWaypoints())
      this.$forceUpdate()
    },
    removeItinerary (id) {
      this.$store.commit('custom_itinerary/REMOVE_STOP', id)
      this.toastText = 'Successfully removed stop from itinerary!'
      this.toast = true
      this.timerId = setTimeout(() => {
        this.toast = false
      }, 2000)
    },
    reorderItinerary (index, newIndex) {
      this.$store.commit('custom_itinerary/REORDER_STOP', { from: index, to: newIndex })
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
