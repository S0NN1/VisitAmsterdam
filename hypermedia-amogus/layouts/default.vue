<template>
  <div>
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
                <div class="flex-none">
                  <div class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900 border-b-2">
                    <input
                      type="text"
                      class="text-white placeholder-white appearance-none bg-transparent py-1 w-64"
                      placeholder=""
                    >
                    <button class="flex items-center justify-center text-white fill-white">
                      <IconsSearchIcon />
                    </button>
                  </div>
                </div>
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
        <div v-if="!mobileDev" class="w-100 flex justify-end h-11">
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
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/itineraries">
                  <b :class="$nuxt.$route.name==='itineraries' ? 'underline decoration-2 decoration-sky-500' : ''">Itineraries</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/points-of-interest">
                  <b
                    :class="$nuxt.$route.name==='points-of-interest' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Point
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
          <div class="w-1/6" />
        </div>
        <Nuxt :style="'margin-top: ' + mobileDev + '5rem' + '-1.75rem'" />
        <FooterNav />
      </div>
      <div class="drawer-side">
        <label for="my-drawer-3" class="drawer-overlay" />
        <ul class="menu p-4 overflow-y-auto w-80 bg-primary rounded-tl-3xl">
          <li class="grid grid-cols-3">
            <div class="flex justify-start">
              <label
                for="my-drawer-3"
                class="flex btn btn-primary border-none text-white fill-white drawer-button pl-0"
              >
                <IconsCloseIcon class="icon-shadow fill-white" width="3rem" height="3rem" />
              </label>
            </div>
            <div class="flex col-span-2 justify-end">
              <button class="flex items-center justify-center text-white fill-white mr-4">
                <IconsWorldwideIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
              </button>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsUserIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
              </button>
            </div>
          </li>

          <!-- Sidebar content here -->
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              <div
                class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900 border-b-2 border-[#601616] border-opacity-20"
              >
                <button class="flex items-center justify-center text-white fill-white">
                  <IconsSearchIcon />
                </button>
                <input
                  type="text"
                  class="text-white text-center placeholder-white appearance-none bg-transparent py-1 w-full"
                  placeholder="Search"
                >
              </div>
            </button>
          </li>
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Home
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Events
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Itineraries
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Points of Interest
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Services
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              About Us
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Contacts
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="sidebar-li">
            <button class="flex items-center justify-center text-white">
              Terms Of Use
            </button>
          </li>
          <div class="bg-[#601616] h-0.5 bg-opacity-20 mx-4" />
          <li class="flex h-full align-baseline justify-center">
            <div class=" flex h-full grid grid-rows-3">
              <div class="flex row-span-2" />
              <div class=" grid grid-cols-4 gap-0 w-full h-full items-center">
                <IconsSocialFacebookIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  width="2rem"
                  height="2rem"
                />
                <IconsSocialInstagramIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  width="2rem"
                  height="2rem"
                />
                <IconsSocialTwitterIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  width="2rem"
                  height="2rem"
                />
                <IconsSocialYoutubeIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  width="2rem"
                  height="2rem"
                />
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
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

.sidebar-li {
  @apply text-2xl;
  @apply font-bold;
  line-height: unset;
}

.icon-footer {
  @apply bg-white
}
</style>
