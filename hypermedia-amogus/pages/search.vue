<template>
  <div v-if="ready">
    <HeroImage :title="searchResults.length + ' results found for ' + searchField" />
    <div class="flex justify-center">
      <div
        class="flex w-4/5 lg:w-1/2 justify-center items-center bg-white py-6 px-2 rounded-xl shadow-xl"
        style="margin: -2.5rem"
      >
        <div class="grid grid-rows-2 gap-4 w-full">
          <div class="grid grid-cols-2 lg:grid-cols-12 w-full mt-4">
            <div v-if="!mobileDev" />
            <div class="lg:col-span-9 border-b-2">
              <input
                v-model="searchField"
                type="text"
                class="appearance-none bg-transparent py-1 lg:w-full"
                placeholder="Search"
                @keyup.enter="search(searchField)"
              >
            </div>
            <div v-if="!mobileDev" />
            <div>
              <button @click="search(searchField)">
                <IconsSearchIcon />
              </button>
            </div>
          </div>
          <div class="flex w-full justify-center">
            <div
              v-for="(filter, index) in filters"
              :key="filter+index"
              class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer"
              :class="activeFilter===filter ? 'badge-primary': 'text-[#787caa]'"
              @click="applyFilter(filter)"
            >
              {{ filter }}
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container mx-auto w-11/12 lg:w-10/12 justify-center mt-16 mb-10">
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-10">
        <div v-for="result in searchResults" :key="result.id">
          <NuxtLink :to="result.link">
            <CardItem card-type="SEARCH" :object="result" />
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { BACKEND_URL } from 'assets/js/constants'

export default {
  name: 'SearchPage',
  data () {
    return {
      filters: ['All', 'Events', 'Point of Interests', 'Services', 'Itineraries'],
      activeFilter: 'All',
      mobileDev: false,
      searchField: '',
      searchResults: [],
      ready: false,
      elementFiltered: [],
      results: []
    }
  },
  async mounted () {
    this.searchResults = await this.searchByText(this.$route.query.input)
    this.searchField = this.$route.query.input
    // eslint-disable-next-line nuxt/no-env-in-hooks
    this.ready = true
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
    applyFilter (filter) {
      this.activeFilter = filter
      this.elementsFiltered = []
      const that = this
      if (filter.toUpperCase() === 'ALL') {
        this.searchResults = this.results
      } else {
        that.searchResults = this.results.filter((element) => {
          console.log(element.type.toUpperCase())
          return element.type.toUpperCase() === filter.toUpperCase()
        })
      }
    },
    async searchByText (input) {
      const results = await fetch(BACKEND_URL + '/api/v1/search/search?input=' + input).then(
        res => res.json()
      )
      const arrayResult = []
      results.events.forEach(function (event) {
        arrayResult.push({
          heroImage: event.heroImage,
          name: event.name,
          description: event.description,
          type: 'Events',
          link: '/events/' + event.id
        })
      })

      results.itineraries.forEach(function (itinerary) {
        arrayResult.push({
          heroImage: itinerary.heroImage,
          name: itinerary.name,
          description: itinerary.description,
          type: 'Itineraries',
          link: '/itineraries/' + itinerary.id
        })
      })

      results.pointOfInterests.forEach(function (poi) {
        arrayResult.push({
          heroImage: poi.heroImage,
          name: poi.name,
          description: poi.description,
          type: 'Point of Interests',
          link: '/points-of-interest/' + poi.id
        })
      })

      results.services.forEach(function (service) {
        arrayResult.push({
          heroImage: service.heroImage,
          name: service.name,
          description: service.serviceTag.name + service.address,
          type: 'Services',
          link: '/services/' + service.id
        })
      })

      this.results = arrayResult
      return arrayResult
    },
    async search (input) {
      this.searchResults = await this.searchByText(input)
    }
  }
}
</script>

<style scoped>

</style>
