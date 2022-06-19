<template>
  <div class="container mx-auto w-11/12 lg:w-10/12 justify-center lg:mt-16">
    <div class="flex w-full grid grid-cols-1 lg:grid-cols-2 h-fit">
      <div>
        <div class="flex grid lg:grid-rows-3">
          <div v-if="!mobileDev" class="flex" />
          <h2 class="mt-8">
            Useful Contacts
          </h2>
          <div v-if="!mobileDev" class="flex" />
        </div>
        <div class="flex grid grid-cols-1 md:grid-cols-2 mt-10 gap-y-4 justify-center gap-x-4">
          <p class="text-center md:text-right lg:text-left">
            <b>Tourism Office Phone</b>
          </p>
          <p class="text-center md:text-left lg:text-center">
            <a href="tel:+3114020">+31 14020</a>
          </p>
          <p class="text-center md:text-right lg:text-left">
            <b>Tourism Office Email</b>
          </p>
          <p class="text-center md:text-left lg:text-center">
            <a href="mailto:tourism@amsterdam.ol">tourism@amsterdam.ol</a>
          </p>
          <p class="text-center md:text-right lg:text-left">
            <b>Tourism Office Website</b>
          </p>
          <p class="text-center md:text-left lg:text-center">
            <a href="https://www.amsterdam.info/tips/touristoffice/" target="_blank">www.amsterdam.info</a>
          </p>
        </div>
      </div>
      <img
        v-if="!mobileDev"
        :src="require('@/static/img/contacts.webp')"
        alt="amsterdam-canal"
        class="w-full"
      >
    </div>
    <div class="flex divider" />
    <h2 :class="mobileDev ? 'text-center' : 'text-left'" class="flex w-full my-8">
      Interactive Map & Infopoint
    </h2>
    <MapItem
      :class="mobileDev ? 'rounded-3xl' : ''"
      :height="'28rem'"
      :markers="[{latitude: 52.379551503365654, longitude: 4.900806771481708, address: 'De Ruijterkade 28, 1012 AA Amsterdam'}]"
      class="w-full"
    />
    <div class="flex" />
  </div>
</template>

<script>
import Vue from 'vue'

export default Vue.extend({
  name: 'ContactsPage',
  title: 'Contact Us',
  data () {
    return {
      mobileDev: false,
      mediaQuery: null
    }
  },
  head () {
    return {
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Contacts related to the website and Amsterdam'
        },
        {
          hid: 'keywords',
          name: 'keywords',
          content: 'contacts, contact-us, help'
        }
      ]
    }
  },
  mounted () {
    // eslint-disable-next-line nuxt/no-env-in-hooks
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 1024px)')
      this.mobileDev = this.mediaQuery.matches
      const that = this
      this.mediaQuery.addListener(() => {
        that.mobileDev = that.mediaQuery.matches
      })
    }
  }
})
</script>

<style scoped>

</style>
