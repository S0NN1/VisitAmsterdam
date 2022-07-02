<template>
  <div>
    <h3 class="flex w-full mb-5">
      Filters
    </h3>
    <div
      class="flex grid grid-cols-2 md:grid-cols-3 lg:grid-cols-5 w-full justify-center items-center gap-x-6 gap-y-3 text-center mt-5 px-3"
    >
      <div
        v-for="(filter, index) in filters"
        :key="filter+index"
        :class="activeFilter===filter ? 'badge-primary text-white': 'text-[#232539]'"
        class="flex badge p-5 font-bold w-full mx-auto tag-badge cursor-pointer text-xs lg:text-base hover:bg-primary normal-case"
        @click="applyFilter(filter, pageType)"
      >
        {{ filter.substring(0, 1).toUpperCase() + filter.substring(1).toLowerCase() }}
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
              :card-type="pageCardType[pageType]"
              :object="element"
              class="hover:shadow-2xl transition ease-in-out duration-200 box-shadow-card"
            />
          </NuxtLink>
          <NuxtLink
            v-else
            :to="'/itineraries/' + element.id.toString()"
            class="flex w-full grid grid-cols-1 gap-0 lg:grid-cols-2 lg:gap-3 mb-10"
          >
            <CardItem :card-type="pageCardType[pageType]" :object="element" class="flex w-full" />
            <CardItem :mobile="mobile" :object="element" card-type="COMPLEX" class="flex w-full" />
          </NuxtLink>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { BACKEND_URL } from 'assets/js/constants'

/**
 * Component used in Events/Services/Points of Interest/Itineraries pages to display filters and items.
 */
export default {
  name: 'AllCardsSection',
  props: {
    /**
     * The page type specifying the two possible versions of the component and also the API call to the corresponding
     * topic.
     * itineraries => filters + list of rows containing two [**CardItems**](#carditem) each: one COMPLEX and one ITINERARY
     * services/events/point of interests => filters + list of [**CardItems**](#carditem) MULTIPLE
     * @values events, services, points-of-interest , itineraries
     */
    pageType: {
      type: String,
      default: 'events'
    },
    /**
     * The flag used to specify mobile or desktop visualization of the component.
     * @values true, false
     */
    mobile: {
      type: Boolean,
      default: false
    },
    /**
     * The elements passed down to this component, based on the parent page's topic.
     * @values {}, {..}
     */
    elements: {
      type: Array,
      default: () => {
      }
    }
  },
  data () {
    return {
      filters: ['All'],
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
    switch (that.pageType.toLowerCase()) {
      case 'events':
        if (this.$route.query.category !== undefined) {
          this.applyFilter(this.$route.query.category, this.pageType)
        }
        break
      case 'itineraries':
      case 'points-of-interest':
        if (this.$route.query.tag !== undefined) {
          this.applyFilter(this.$route.query.tag, this.pageType)
        }
        break
      case 'services':
        if (this.$route.query.tag !== undefined) {
          this.applyFilter(this.$route.query.tag, this.pageType)
        }
        break
    }
  },
  methods: {
    /**
     * Method that creates an item compatible with the [**CardItem**](#carditem) based on its topic (event/service/itinerary/points of interest).
     *
     * @param {Object} item to be converted.
     * @param {String} pageType prop identifying the parent page.
     * @public
     */
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
    /**
     * Method that converts elements props and filter them.
     *
     * @public
     */
    fetchElements () {
      const that = this
      this.elements.forEach(function (item) {
        const obj = that.craftElementObj(item, that.pageType)
        that.elementsFiltered.push(obj)
      })
    },
    /**
     * Method fired when clicking a filter tag, triggering a change of filter and elements' reorder.
     *
     * @param {Object} filter to apply to the page's elements.
     * @param {String} pageType prop identifying the parent page.
     *
     * @public
     */
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
