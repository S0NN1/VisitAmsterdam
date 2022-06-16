<template>
  <div>
    <div class="drawer drawer-end">
      <input id="my-drawer-3" type="checkbox" class="drawer-toggle" :checked="checked">
      <div class="drawer-content flex flex-col ">
        <!-- Navbar -->
        <div class="w-full navbar bg-primary h-12">
          <div class="flex-1 sm:px-2 sm:mx-2">
            <NuxtLink to="/" class="w-full">
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
            </NuxtLink>
          </div>
          <div class="flex-none lg:hidden">
            <label for="my-drawer-3" class="btn btn-square btn-ghost">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 24 24"
                width="2.3rem"
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
                      id="searchField-navbar"
                      v-model="searchField"
                      type="text"
                      class="text-white placeholder-white appearance-none bg-transparent py-1 w-64"
                      placeholder=""
                      @keyup.enter="search()"
                    >
                    <NuxtLink :to="'/search?input=' + searchField">
                      <button aria-label="Search" class="flex items-center justify-center text-white fill-white">
                        <IconsSearchIcon />
                      </button>
                    </NuxtLink>
                  </div>
                </div>
              </li>
              <li>
                <a href="tel:+3114020" class="flex items-center justify-center text-white fill-white">
                  <IconsPhoneIcon class="icon-shadow fill-white" width="1.5rem" height="1.5rem" />
                </a>
              </li>
              <li>
                <NuxtLink to="/contacts" class="flex items-center justify-center text-white fill-white">
                  <IconsQuestionIcon class="icon-shadow" width="1.5rem" height="1.5rem" />
                </NuxtLink>
              </li>
              <li>
                <button aria-label="Language Switch" class="flex items-center justify-center text-white fill-white">
                  <IconsWorldwideIcon class="icon-shadow" width="1.5rem" height="1.5rem" />
                </button>
              </li>
            </ul>
          </div>
        </div>
        <div v-if="!mobileDev" class="w-100 flex justify-end h-11">
          <div class="bg-base-100 w-fit drop-shadow-lg rounded-xl h-full">
            <ul class="menu menu-horizontal p-0 text-sm">
              <li>
                <NuxtLink to="/home">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='home' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Home</b>
                </NuxtLink>
              </li>
              <li tabindex="0">
                <NuxtLink to="/events">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Events</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/itineraries">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='itineraries' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Itineraries</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/points-of-interest">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='points-of-interest' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Point
                    of
                    Interests</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/services">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='services' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >Services</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/about">
                  <b
                    class="text-[#16215b]"
                    :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-sky-500' : ''"
                  >About</b>
                </NuxtLink>
              </li>
            </ul>
          </div>
          <div class="w-1/6" />
        </div>
        <Nuxt :class="mobileDev ? 'mb-0' : 'mb-24'" :style="mobileDev ? '' : 'margin-top: -2.75rem'" />
        <FooterNav :mobile="mobileDev" />
      </div>
      <div class="drawer-side">
        <label for="my-drawer-3" class="drawer-overlay" />
        <ul class="menu overflow-y-auto w-80 bg-primary rounded-tl-3xl items-center">
          <li class="flex w-full grid grid-cols-3 p-0">
            <div class="flex justify-start">
              <label
                for="my-drawer-3"
                class="flex border-none text-white fill-white drawer-button pl-0"
              >
                <IconsCloseIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
              </label>
            </div>
            <div class="flex col-span-2 justify-end">
              <button aria-label="Language Switch" class="flex items-center justify-center text-white fill-white mr-4">
                <IconsWorldwideIcon class="icon-shadow fill-white" width="1.5rem" height="1.5rem" />
              </button>
            </div>
          </li>

          <!-- Sidebar content here -->
          <li class="sidebar-li w-full ">
            <button
              aria-label="Search"
              class="flex items-center justify-center text-white fill-white border-b-2 border-[#601616] border-opacity-20 mx-2"
            >
              <NuxtLink :to="'/search?input=' + searchField" class="fill-white">
                <IconsSearchIcon />
              </NuxtLink>
              <input
                id="searchField-sidebar"
                v-model="searchField"
                type="text"
                class="text-white text-center placeholder-white appearance-none bg-transparent py-1 w-full"
                placeholder="Search"
                @keyup.enter="search()"
              >
            </button>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/home"
              class="w-full text-white justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Home
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/events"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Events
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/itineraries"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Itineraries
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/points-of-interest"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Points of Interest
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/services"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Services
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/about"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              About Us
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/contacts"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Contacts
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              to="/tos"
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
            >
              Terms Of Use
            </NuxtLink>
          </li>
          <li class="flex h-full w-full align-baseline justify-center">
            <div class=" flex h-full grid grid-rows-2">
              <div class="flex " />
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
<script>

export default {
  data () {
    return {
      mediaQuery: null,
      mobileDev: false,
      searchField: '',
      checked: false
    }
  },
  head () {
    return {
      link: [
        {
          rel: 'canonical',
          href: 'https://hyp.lucapirovano.com' + this.$route.path
        }
      ]
    }
  },
  created () {
    this.$nuxt.$on('closeDrawer', $event => this.closeDrawer($event))
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
  },
  methods: {
    closeDrawer (event) {
      this.checked = event
    },
    search () {
      if (process.client) {
        window.location.href = '/search?input=' + this.searchField
      }
    }
  }
}
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
  @apply text-base;
  @apply font-bold;
  line-height: unset;
}

.icon-footer {
  @apply bg-white
}
</style>
