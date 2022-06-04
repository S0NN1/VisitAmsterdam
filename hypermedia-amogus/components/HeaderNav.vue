<template>
  <div class="drawer drawer-end">
    <input id="my-drawer-3" type="checkbox" class="drawer-toggle">
    <div class="drawer-content flex flex-col">
      <!-- Navbar -->
      <div class="w-full navbar bg-primary">
        <div class="flex-1 sm:px-2 sm:mx-2">
          <span class="flex text-2xl text-white">
            <svg width="2.3rem" height="2.3rem" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
                d="M7.17158 14.2426C6.78106 14.6332 6.14789 14.6332 5.75737 14.2426C5.36684 13.8521 5.36684 13.2189 5.75737 12.8284L12.8284 5.75735C13.219 5.36682 13.8521 5.36682 14.2427 5.75735C14.6332 6.14787 14.6332 6.78104 14.2427 7.17156L7.17158 14.2426Z"
                fill="currentColor"
              />
              <path
                d="M5.75737 7.17152C5.36684 6.781 5.36684 6.14783 5.75737 5.75731C6.14789 5.36679 6.78106 5.36679 7.17158 5.75731L14.2427 12.8284C14.6332 13.2189 14.6332 13.8521 14.2427 14.2426C13.8521 14.6331 13.219 14.6331 12.8284 14.2426L5.75737 7.17152Z"
                fill="currentColor"
              />
            </svg>
            <b>Amsterdam</b>
          </span>
        </div>
        <div class="flex-none sm:hidden">
          <label for="my-drawer-3" class="btn btn-square btn-ghost">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 24 24"
              class="inline-block w-6 h-6 stroke-white"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
            </svg>
          </label>
        </div>
        <div class="flex-none hidden lg:block">
          <ul class="menu menu-horizontal">
            <!-- Navbar menu content here -->
            <li>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsSearchIcon />
              </button>
            </li>
            <li>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsPhoneIcon class="icon-shadow fill-white" width="1.5rem" height="1.5rem" />
              </button>
            </li>
            <li>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsQuestionIcon class="icon-shadow" width="1.5rem" height="1.5rem" />
              </button>
            </li>
            <li>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsWorldwideIcon class="icon-shadow" width="1.5rem" height="1.5rem" />
              </button>
            </li>
            <li>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsUserIcon class="icon-shadow" width="1.5rem" height="1.5rem" />
              </button>
            </li>
          </ul>
        </div>
      </div>
      <div class="w-100 flex justify-end h-11">
        <div class="bg-base-100 w-fit drop-shadow-lg rounded-xl h-full">
          <ul class="menu menu-horizontal p-0 text-sm">
            <li>
              <NuxtLink to="/">
                <b :class="$nuxt.$route.name==='home' ? 'underline decoration-2 decoration-sky-500' : ''">Home</b>
              </NuxtLink>
            </li>
            <li tabindex="0">
              <NuxtLink to="/events">
                <b :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-sky-500' : ''">Events</b>
                <!--              <svg class="fill-current" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                                <path d="M7.41,8.58L12,13.17L16.59,8.58L18,10L12,16L6,10L7.41,8.58Z"/>
                              </svg>-->
              </NuxtLink>
            </li>
            <li>
              <NuxtLink to="/itineraries">
                <b :class="$nuxt.$route.name==='itineraries' ? 'underline decoration-2 decoration-sky-500' : ''">Itineraries</b>
              </NuxtLink>
            </li>
            <li>
              <NuxtLink to="/points-of-interest">
                <b :class="$nuxt.$route.name==='points-of-interest' ? 'underline decoration-2 decoration-sky-500' : ''">Point
                  of
                  Interests</b>
              </NuxtLink>
            </li>
            <li>
              <NuxtLink to="/services">
                <b :class="$nuxt.$route.name==='services' ? 'underline decoration-2 decoration-sky-500' : ''">Services</b>
              </NuxtLink>
            </li>
            <li>
              <NuxtLink to="#">
                <b :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-sky-500' : ''">About</b>
              </NuxtLink>
            </li>
          </ul>
        </div>
        <div class="w-1/8" />
      </div>
      <Nuxt />
    </div>
    <div class="drawer-side">
      <label for="my-drawer-3" class="drawer-overlay" />
      <ul class="menu p-4 overflow-y-auto w-80 bg-primary rounded-tl-3xl">
        <li class="grid grid-cols-3">
          <div class="flex justify-start">
            <button class="flex items-center justify-center text-white fill-white">
              <IconsCloseIcon class="icon-shadow fill-white" width="3rem" height="3rem" />
            </button>
          </div>
          <div class="flex col-span-2 justify-end">
            <button class="flex items-center justify-center text-white fill-white">
              <IconsWorldwideIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
            </button>
            <button class="flex items-center justify-center text-white fill-white">
              <IconsUserIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
            </button>
          </div>
        </li>

        <!-- Sidebar content here -->
        <li>
          <button class="flex items-center justify-center text-white">
            Search
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Home
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Events
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Itineraries
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Points of Interest
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Services
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            About Us
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Contacts
          </button>
        </li>
        <li>
          <button class="flex items-center justify-center text-white">
            Terms Of Use
          </button>
        </li>
      </ul>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'HeaderNav',
  data () {
    return {
      mediaQuery: {
        type: Object,
        default: null
      },
      mobileDev: false
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
input:focus {
  border: none;
  outline: none;
}

li {
  @apply text-base;
  line-height: unset;
}
</style>
