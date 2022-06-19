<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All services
      </h2>
      <AllCardsSection :elements="services" :page-type="'services'" />
    </div>
  </div>
</template>
<script>
import { BACKEND_URL } from '~/assets/js/constants'

export default {
  name: 'ServicesPage',
  title: 'Services',
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
  },
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Amsterdam local services'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'local, guide, support, services'
        }
      ]
    }
  }
}
</script>
