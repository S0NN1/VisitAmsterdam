<template>
  <div>
    <div class="justify-center mb-40">
      <div class="grid grid-cols-10 w-full">
        <div v-if="!mobileDev" />
        <div class="mt-40" :class="mobileDev ? 'col-span-10 mx-4 mb-4' : 'mr-20 col-span-4'">
          <h1 :class="mobileDev ? 'text-center' : 'text-right'">
            Useful Contacts
          </h1>
          <div class="grid grid-cols-2 mt-10 gap-y-4">
            <p :class="mobileDev ? 'col-span-2 text-center' : ''">
              <b>Tourism Office Phone</b>
            </p>
            <p :class="mobileDev ? 'col-span-2 text-center' : 'text-right'">
              02 12 12 12
            </p>
            <p :class="mobileDev ? 'col-span-2 text-center' : ''">
              <b>Tourism Office Email</b>
            </p>
            <p :class="mobileDev ? 'col-span-2 text-center' : 'text-right'">
              <a href="mailto:tourism@amsterdam.ol">tourism@amsterdam.ol</a>
            </p>
            <p :class="mobileDev ? 'col-span-2 text-center' : ''">
              <b>Tourism Office Website</b>
            </p>
            <p :class="mobileDev ? 'col-span-2 text-center' : 'text-right'">
              <a href="https://www.amsterdam.info/tips/touristoffice/" target="_blank">www.amsterdam.info</a>
            </p>
          </div>
        </div>
        <div class="justify-center text-right" :class="mobileDev ? 'col-span-10' : 'col-span-5'">
          <img
            src="https://images.unsplash.com/photo-1516909973415-3ab32de56569?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025"
            style="max-width: 100%"
          >
        </div>
        <div />
        <div class="col-span-8">
          <div class="divider" />
        </div>
        <div />
        <div />
        <div class="col-span-8">
          <h1 class="my-8" :class="mobileDev ? 'text-center' : ''">
            Interactive Map & Infopoint
          </h1>
          <!--          TODO: fix map-->
          <client-only>
            <MapItem
              class="card w-full"
              style="height: 40vh"
            />
          </client-only>
        </div>
        <div />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'ContactsPage',
  data () {
    return {
      mobileDev: false,
      mediaQuery: null
    }
  },
  mounted () {
    if (process.client) {
      this.mediaQuery = matchMedia('(max-width: 700px)')
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
