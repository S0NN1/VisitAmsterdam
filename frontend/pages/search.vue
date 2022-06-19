<template>
  <div v-if="ready" class="">
    <HeroImage
      :title="searchResults.length + ' results ' + (searchResults.length!==0 ? 'found for \'' + searchField + '\'' : 'found')"
    />
    <div class="flex justify-center">
      <div
        class="flex w-4/5 lg:w-1/2 justify-center items-center bg-white py-6 px-2 rounded-xl shadow-xl"
        style="margin: -2.5rem"
      >
        <div class="w-full">
          <div class="flex h-fit w-full px-2">
            <div class="w-full border-b-2 border-secondary">
              <input
                v-model="searchField"
                class="appearance-none bg-transparent py-1 text-secondary placeholder-secondary lg:w-full"
                placeholder="Search"
                type="text"
                @keyup.enter="search(searchField)"
              >
            </div>
            <div class="items-center">
              <button aria-label="Search" @click="search(searchField)">
                <IconsSearchIcon class="fill-secondary" />
              </button>
            </div>
          </div>
          <div
            class="flex grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 w-full justify-center items-center gap-x-6 gap-y-3 text-center mt-5 px-3"
          >
            <div
              v-for="(filter, index) in filters"
              :key="filter+index"
              :class="activeFilter===filter ? 'badge-primary': 'text-[#787caa]'"
              class="badge p-6 font-bold tag-badge badge-md text-white cursor-pointer w-full mx-auto"
              @click="applyFilter(filter)"
            >
              {{ filter }}
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container mx-auto w-11/12 lg:w-10/12 h-fit justify-center mt-16 mb-10">
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-10">
        <div v-for="result in searchResults" :key="result.id">
          <NuxtLink :to="result.link">
            <CardItem :object="result" card-type="SEARCH" />
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
  title: 'Search',
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
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Search for content on the website: events, services, attractions'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'search, find'
        }
      ]
    }
  },
  async mounted () {
    this.searchResults = await this.searchByText(this.$route.query.input)
    this.searchField = this.$route.query.input
    // eslint-disable-next-line nuxt/no-env-in-hooks
    this.ready = true
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
    applyFilter (filter) {
      this.activeFilter = filter
      this.elementsFiltered = []
      const that = this
      if (filter.toUpperCase() === 'ALL') {
        this.searchResults = this.results
      } else {
        that.searchResults = this.results.filter((element) => {
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
