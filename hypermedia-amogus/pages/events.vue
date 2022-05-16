<template>
  <!--  <client-only>
          <MapItem
            class="card h-96 w-96"
          />
    </client-only>-->
  <div>
    <HeroImage />
    <div class="m-6">
      <h2 class="mx-6">
        Hottest events
      </h2>
      <div class="m-4">
        <CarouselItem />
      </div>
    </div>
    <div class="divider m-6" />
    <div class="m-6">
      <h2 class="mx-6">
        All events
      </h2>
      <h3 class="mx-6">
        Filters
      </h3>
      <div class="ml-8">
        <div class="badge badge-lg badge-primary p-3 mr-4 w-20">
          All
        </div>
        <div class="badge badge-lg badge-neutral p-3 mr-4 w-20">
          Summer
        </div>
        <div class="badge badge-lg badge-neutral p-3 mr-4 w-20">
          Winter
        </div>
        <div class="badge badge-lg badge-neutral p-3 mr-4 w-20">
          Spring
        </div>
        <div class="badge badge-lg badge-neutral p-3 mr-4 w-20">
          Autumn
        </div>
      </div>
      <div class="divider mx-6" />
      <div class="w-full justify-center text-right">
        <p class="mx-6 text-lg">
          <b>{{ filter }} | 9 results</b>
        </p>
      </div>
      <div class="flex justify-center">
        <div class="w-3/4 grid gap-32 grid-cols-3">
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
          <CardItem :card-type="'MULTIPLE'" />
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'EventsPage',
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>

<style scoped>

</style>
