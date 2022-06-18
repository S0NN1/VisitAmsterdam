<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-14 mb-24">
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
    <div class="grid grid-cols-2 gap-0 mt-10 w-fit   justify-start">
      <h1 class="text-4xl">
        Name:
      </h1>
      <p class="text-4xl">
        {{ $store.state.custom_itinerary.name === '' ? 'Unnamed Itinerary' : $store.state.custom_itinerary.name }}
      </p>
    </div>
    <div v-if="$store.state.custom_itinerary.stops.length===0">
      <p> Currently no stops added to custom itinerary, add them to display them here</p>
      <NuxtLink to="/points-of-interest">
        <button aria-label="Find Points of Interest" class="btn btn-primary normal-case text-base">
          Find points of interest
        </button>
      </NuxtLink>
    </div>
    <div v-else />
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
      toastText: ''
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
  methods: {
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
