<template>
  <div>
    <h3 class="flex w-full mb-5">
      Filters
    </h3>
    <div class="flex w-full grid grid-cols-4 gap-3 lg:grid-cols-10 lg:gap-10 justify-start">
      <div
        v-for="(filter, index) in filters"
        :key="filter+index"
        class="flex w-full badge p-5 font-bold tag-badge text-white cursor-pointer text-xs lg:text-base"
        :class="activeFilter===filter ? 'badge-primary': 'text-[#787caa]'"
        @click="applyFilter(filter, pageType)"
      >
        {{ filter }}
      </div>
    </div>
    <div class="divider mb-5" />
    <div class="flex w-full justify-end font-bold mb-5">
      <span>{{ activeFilter }}</span>
      <span class="divider divider-horizontal before:bg-secondary after:bg-secondary" />
      <span>{{ elementsFiltered.length }}   {{ elementsFiltered.length > 1 ? 'results' : 'result' }}</span>
    </div>
    <div class="flex w-full justify-center">
      <div
        :class="{'flex grid gap-10 grid-cols-1 lg:grid-cols-3 mb-20' : pageType.toUpperCase()!=='ITINERARIES'}"
      >
        <div
          v-for="element in elementsFiltered"
          :key="element.id"
          class="flex w-full justify-center"
        >
          <NuxtLink v-if="pageType.toUpperCase()!=='ITINERARIES'" :to="'/' + pageType + '/' + element.id.toString()">
            <CardItem
              :object="element"
              :card-type="pageCardType[pageType]"
              class="hover:shadow-2xl transition ease-in-out duration-200"
            />
          </NuxtLink>
          <NuxtLink
            v-else
            :to="'/itineraries/' + element.id.toString()"
            class="flex w-full grid grid-cols-1 gap-0 lg:grid-cols-2 lg:gap-3 mb-10"
          >
            <CardItem :object="element" :card-type="pageCardType[pageType]" class="flex w-full" />
            <CardItem card-type="COMPLEX" :mobile="mobile" :object="element" class="flex w-full" />
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { Paragraph } from 'beemovie'
import { BACKEND_URL } from 'assets/js/constants'

export default {
  name: 'AllCardsSection',
  props: {
    pageType: {
      type: String,
      default: 'events'
    },
    mobile: {
      type: Boolean,
      default: false
    },
    elements: {
      type: Array,
      default: () => [JSON.parse('{ "name": "Test Element", "id": "42", "duration": 0, "description": "' + Paragraph() + '", "categories": [{"name": "Summer"}], "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} '), JSON.parse('{ "name": "Test Element", "id": "69", "duration": 0, "description": "' + Paragraph() + '", "categories": [{"name": "Summer"}], "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} ')]
    }
  },
  data () {
    return {
      filters: ['All'/*, 'Summer', 'Winter', 'Spring', 'Autumn' */],
      activeFilter: 'All',
      elementsFiltered: [],
      pageCardType: {
        events: 'MULTIPLE',
        itineraries: 'ITINERARY',
        'points-of-interest': 'MULTIPLE',
        services: 'MULTIPLE'

      }
    }
  },
  async mounted () {
    const filters = await fetch(BACKEND_URL + '/api/v1/tags/' + this.pageType.toLowerCase() + '/getAll').then(res => res.json())
    const that = this
    filters.forEach(function (filter) {
      that.filters.push(filter.name.substring(0, 1).toUpperCase() + filter.name.substring(1).toLowerCase())
    })
    this.fetchElements()
    if (this.$route.query.filter !== undefined) {
      this.applyFilter(this.$route.query.filter, this.pageType)
    }
  },
  methods: {
    craftElementObj (item, pageType) {
      switch (pageType.toLowerCase()) {
        case 'events':
          return {
            id: item.id,
            name: item.name,
            description: item.description,
            price: item.price,
            heroImage: item.heroImage,
            eventPictures: item.eventPictures,
            infoUrl: item.infoUrl,
            bookingUrl: item.bookingUrl,
            categories: item.categories,
            eventDays: item.eventDays
          }
        case 'itineraries':
          return {
            id: item.id,
            name: item.name,
            description: item.description,
            tags: item.tags,
            duration: item.duration,
            heroImage: item.heroImage,
            stops: item.stops
          }
        case 'points-of-interest':
          return {
            id: item.id,
            name: item.name,
            address: item.address,
            latitude: item.latitude,
            longitude: item.longitude,
            description: item.description,
            visitInfo: item.visitInfo,
            tags: item.tags,
            heroImage: item.heroImage,
            events: item.events
          }
        case 'services':
          return {
            id: item.id,
            name: item.name,
            serviceTag: item.serviceTag,
            address: item.address,
            latitude: item.latitude,
            longitude: item.longitude,
            visitInfo: item.visitInfo,
            heroImage: item.heroImage
          }
      }
    },
    /* async */
    fetchElements () {
      const that = this
      this.elements.forEach(function (item) {
        const obj = that.craftElementObj(item, that.pageType)
        that.elementsFiltered.push(obj)
      })
      console.log(this.elementsFiltered)
    },
    applyFilter (filter, pageType) {
      this.activeFilter = filter.substring(0, 1).toUpperCase() + filter.substring(1).toLowerCase()
      this.elementsFiltered = []
      const that = this
      if (filter === 'All') {
        this.elements.forEach(function (item) {
          const obj = that.craftElementObj(item, that.pageType)
          that.elementsFiltered.push(obj)
        })
      } else {
        let filteredTemp = []
        switch (pageType.toLowerCase()) {
          case 'events':
            filteredTemp = this.elements.filter((element) => {
              return element.categories.some((item) => {
                return item.name.toUpperCase() === filter.toUpperCase()
              })
            })
            break

          case 'points-of-interest':
          case 'itineraries':
            filteredTemp = this.elements.filter((element) => {
              return element.tags.some((item) => {
                return item.name.toUpperCase() === filter.toUpperCase()
              })
            })
            break

          case 'services':
            filteredTemp = this.elements.filter((element) => {
              return element.serviceTag.name.toUpperCase() === filter.toUpperCase()
            })
            break
        }
        filteredTemp.forEach(function (item) {
          const obj = that.craftElementObj(item, that.pageType)
          that.elementsFiltered.push(obj)
        })
      }
    }
  }
}
</script>

<style scoped>

</style>
