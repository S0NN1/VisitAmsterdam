<template>
  <div>
    <HeroImage :title="'12 results found for ' + search"/>
    <div class="flex justify-center">
      <div class="flex w-1/2 justify-center items-center bg-white py-6 rounded-xl" style="margin: -2rem">
        <div class="grid grid-rows-2 gap-4 w-full">
          <div class="grid grid-cols-12 w-full mt-4">
            <div class="col-span-1"/>
            <div class="col-span-9 border-b-2">
              <input
                type="text"
                class="appearance-none bg-transparent py-1 w-full"
                placeholder="Search"
              >
            </div>
            <div/>
            <div>
              <IconsSearchIcon/>
            </div>
          </div>
          <div class="flex w-full justify-center">
            <div
              v-for="(filter, index) in filters"
              :key="filter+index"
              class="badge mr-4 p-5 font-bold tag-badge text-white cursor-pointer"
              :class="activeFilter===filter ? 'badge-primary': 'text-[#787caa]'"
              @click="applyFilter(filter, pageType)"
            >
              {{ filter }}
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container mx-auto w-10/12 justify-center">
    </div>
  </div>
</template>

<script>
export default {
  name: 'SearchPage',
  props: {
    search: {
      type: String,
      default: 'AAA'
    }
  },
  data () {
    return {
      filters: ['All', 'Events', 'Point of Interest', 'Services', 'Itineraries'],
      activeFilter: 'All'
    }
  },
  methods: {
    applyFilter (filter, pageType) {
      this.activeFilter = filter
      this.elementsFiltered = []
      const that = this
      if (filter === 'ALL') {
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

          case 'itineraries' || 'points-of-interest':
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
