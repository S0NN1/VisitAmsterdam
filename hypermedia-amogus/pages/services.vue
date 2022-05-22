<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="mx-6">
        All services
      </h2>
      <h3 class="mx-6">
        Filters
      </h3>
      <div class="ml-8">
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer hover-bordered filter-shadow"
          :class="filter==='ALL' ? 'badge-primary' : 'badge-neutral'"
          @click="resetFilter"
        >
          All
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SUMMER' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('SUMMER')"
        >
          Summer
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='WINTER' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('WINTER')"
        >
          Winter
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='SPRING' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('SPRING')"
        >
          Spring
        </div>
        <div
          class="badge badge-lg p-3 mr-4 w-20 cursor-pointer filter-shadow"
          :class="filter==='AUTUMN' ? 'badge-primary' : 'badge-neutral'"
          @click="applyFilter('AUTUMN')"
        >
          Autumn
        </div>
      </div>
      <div class="divider mx-6" />
      <div class="w-full justify-center text-right">
        <p class="mx-6 text-lg">
          <b>{{ filter }} | {{ eventArray.length }} results</b>
        </p>
      </div>
      <div class="flex justify-center">
        <div class="w-3/4 grid gap-32 grid-cols-3 mb-20">
          <CardItem v-for="event in eventArray" :key="event.id" :object="event" card-type="MULTIPLE" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'ServicesPage',
  props: {},
  data () {
    return {
      filter: 'ALL',
      eventArray: [],
      eventList: [
        {
          id: 1,
          name: 'Test Event',
          description: 'Well, that\'s a test description!',
          price: 0.0,
          heroImageUrl: 'https://via.placeholder.com/1920x1080',
          pictures: [],
          infoUrl: 'https://lucapirovano.com',
          bookingUrl: 'https://lucapirovano.com',
          categories: [
            {
              '@UUID': '23b98170-d3d5-41e7-84da-121350ae7944',
              name: 'SUMMER'
            }
          ],
          eventDays: [
            {
              id: 7,
              date: '2022-04-12',
              startTime: '10:00:00',
              endTime: '12:00:00'
            },
            {
              id: 8,
              date: '2022-04-13',
              startTime: '10:00:00',
              endTime: '12:00:00'
            }
          ],
          location: {
            id: 4,
            name: 'sus',
            latitude: 90.0,
            longitude: 141.0,
            tags: [],
            pictures: [
              {}
            ]
          }
        }
      ]
    }
  },
  mounted () {
    this.fetchEvents()
  },
  methods: {
    fetchEvents () {
      const that = this
      this.eventList.forEach(function (item, index) {
        const obj = {
          image: item.heroImageUrl,
          name: item.name,
          description: item.description,
          date: 'Wednesday 17',
          time: '20.30',
          link: item.infoUrl,
          duration: 8
        }
        that.eventArray.push(obj)
      })
    },
    applyFilter (filter) {
      this.filter = filter
      // console.log(this.eventList.filter(item => item.categories.filter(cat => cat.name === filter)))
      const results = this.eventList.filter((event) => {
        return event.categories.some((item) => {
          return item.name === filter
        })
      })
      this.eventArray = []
      const that = this
      results.forEach(function (item, index) {
        const obj = {
          image: item.heroImageUrl,
          name: item.name,
          description: item.description,
          date: 'Wednesday 17',
          time: '20.30',
          link: item.infoUrl,
          duration: 8
        }
        that.eventArray.push(obj)
      })
    },
    resetFilter () {
      this.filter = 'ALL'
      this.eventArray = []
      const that = this
      this.eventList.forEach(function (item, index) {
        const obj = {
          image: item.heroImageUrl,
          name: item.name,
          description: item.description,
          date: 'Wednesday 17',
          time: '20.30',
          link: item.infoUrl,
          duration: 8
        }
        that.eventArray.push(obj)
      })
    }
  }
}
</script>

<style scoped>

</style>
