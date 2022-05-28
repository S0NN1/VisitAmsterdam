<template>
  <div>
    <h3 class="flex w-full mb-5">
      Filters
    </h3>
    <div class="flex w-full justify-start">
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
    <div class="divider mb-5" />
    <div class="flex w-full justify-end font-bold mb-5">
      <span>{{ activeFilter }}</span>
      <span class="divider divider-horizontal before:bg-secondary after:bg-secondary" />
      <span>{{ elementsFiltered.length }}   {{ elementsFiltered.length > 1 ? 'results' : 'result' }}</span>
    </div>
    <div class="flex justify-center">
      <div :class="{'w-3/4 grid gap-32 grid-cols-3 mb-20' : pageType.toUpperCase()!=='ITINERARY'}">
        <div
          v-for="element in elementsFiltered"
          :key="element.id"
          class="flex w-full justify-center"
        >
          <NuxtLink v-if="pageType.toUpperCase()!=='ITINERARY'" :to="'/' + pageType + '/' + element.id.toString()">
            <CardItem
              :object="element"
              :card-type="pageCardType[pageType]"
              class="hover:shadow-2xl transition ease-in-out duration-200"
            />
          </NuxtLink>
          <NuxtLink v-else :to="'/itineraries/' + element.id.toString()" class="flex mb-10">
            <CardItem :object="element" :card-type="pageCardType[pageType]" class="mr-4" />
            <CardItem card-type="COMPLEX" />
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { Paragraph } from 'beemovie'

export default {
  name: 'AllCardsSection',
  props: {
    pageType: {
      type: String,
      default: 'event'
    },
    elements: {
      type: Array,
      default: () => [JSON.parse('{ "name": "Test Element", "id": "42", "duration": 0, "description": "' + Paragraph() + '", "categories": [{"name": "Summer"}], "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} '), JSON.parse('{ "name": "Test Element", "id": "69", "duration": 0, "description": "' + Paragraph() + '", "categories": [{"name": "Summer"}], "pois": [{"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}, {"image": "https://api.lorem.space/image/movie?w=1920&h=1080"}]} ')]
    }
  },
  data () {
    return {
      filters: ['ALL', 'Summer', 'Winter', 'Spring', 'Autumn'],
      activeFilter: 'ALL',
      elementsFiltered: [],
      pageCardType: {
        event: 'MULTIPLE',
        itinerary: 'ITINERARY',
        pointOfInterest: 'MULTIPLE',
        service: 'MULTIPLE'

      }
    }
  },
  mounted () {
    this.fetchElements()
  },
  methods: {
    craftElementObj (item, pageType) {
      switch (pageType.toLowerCase()) {
        case 'event':
          return {
            id: item.id,
            name: item.name,
            description: item.description,
            price: item.price,
            heroImageUrl: item.heroImageUrl,
            eventPictures: item.eventPictures,
            infoUrl: item.infoUrl,
            bookingUrl: item.bookingUrl,
            categories: item.categories,
            eventDays: item.eventDays,
            pictures: item.pictures
          }
        case 'itinerary':
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
            poiPictures: item.poiPictures,
            events: item.events
          }
        case 'services':
          return {
            id: item.id,
            name: item.name,
            serviceType: item.serviceType,
            address: item.address,
            latitude: item.latitude,
            longitude: item.longitude,
            visitInfo: item.visitInfo,
            servicePicture: item.servicePicture
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
    },
    applyFilter (filter) {
      this.activeFilter = filter
      this.elementsFiltered = []
      const that = this
      if (filter === 'ALL') {
        this.elements.forEach(function (item) {
          const obj = that.craftElementObj(item, that.pageType)
          that.elementsFiltered.push(obj)
        })
      } else {
        const filteredTemp = this.elements.filter((element) => {
          return element.categories.some((item) => {
            return item.name.toUpperCase() === filter.toUpperCase()
          })
        })
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
