<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All services
      </h2>
      <AllCardsSection :page-type="'services'" :elements="services" />
    </div>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'
import { BACKEND_URL } from '~/assets/js/constants'

export default Vue.extend({
  name: 'ServicesPage',
  async asyncData () {
    const services = await fetch(BACKEND_URL + '/api/v1/services/getAll').then(
      res => res.json()
    )
    return {
      services
    }
  },
  data () {
    return {
      filter: 'All'
    }
  }
})
</script>
