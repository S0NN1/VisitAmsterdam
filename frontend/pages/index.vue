<template>
  <div :style="{'background-image': 'url(' + require('@/static/img/amsterdam-index.webp') + ')'}" class="bg-cover">
    <div class="drawer drawer-end">
      <input id="my-drawer-3" class="drawer-toggle" type="checkbox">
      <div class="drawer-content flex flex-col max-h-full">
        <!-- Navbar -->
        <div class="w-full navbar bg-none">
          <div class="flex-1 sm:px-2 sm:mx-2">
            <NuxtLink class="w-full" to="/">
              <span class="flex text-2xl text-white">
                <svg fill="none" height="2.3rem" viewBox="0 0 20 20" width="2.3rem" xmlns="http://www.w3.org/2000/svg">
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
            <label class="btn btn-square btn-ghost" for="my-drawer-3">
              <svg
                class="inline-block w-6 h-6 stroke-white"
                viewBox="0 0 24 24"
                width="2.3rem"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path d="M4 6h16M4 12h16M4 18h16" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" />
              </svg>
            </label>
          </div>
          <div class="flex-none hidden lg:block">
            <ul class="menu menu-horizontal">
              <!-- Navbar menu content here -->
              <li>
                <NuxtLink to="/home">
                  <b>Home</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/events">
                  <b>Events</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/itineraries">
                  <b>Itineraries</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/points-of-interest">
                  <b>Point of Interests</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/services">
                  <b>Services</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/about">
                  <b>About</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/tos">
                  <b>Terms of Use</b>
                </NuxtLink>
              </li>
              <li>
                <div class="flex-none">
                  <div class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900 border-b-2">
                    <input
                      id="searchField-navbar"
                      v-model="searchField"
                      class="text-white placeholder-white appearance-none bg-transparent py-1 w-64 outline-none"
                      placeholder=""
                      type="text"
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
                <a class="flex items-center justify-center text-white fill-white" href="tel:+3114020">
                  <IconsPhoneIcon class="icon-shadow fill-white" height="1.5rem" width="1.5rem" />
                </a>
              </li>
              <li>
                <NuxtLink class="flex items-center justify-center text-white fill-white" to="/contacts">
                  <IconsQuestionIcon class="icon-shadow" height="1.5rem" width="1.5rem" />
                </NuxtLink>
              </li>
              <li>
                <button aria-label="Language Switch" class="flex items-center justify-center text-white fill-white">
                  <IconsWorldwideIcon class="icon-shadow" height="1.5rem" width="1.5rem" />
                </button>
              </li>
            </ul>
          </div>
        </div>
        <div
          class="hero h-full"
        >
          <div class="hero-overlay" style="background-color: transparent !important;">
            <div class="flex h-5/6" />
            <div
              class="flex h-1/6 grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 align-baseline gap-6 text-white fill-white"
            >
              <div class="flex w-full justify-center grid grid-cols-4 gap-3 items-center">
                <div class="flex w-full justify-center">
                  <IconsSocialInstagramIcon
                    :height="mobileDev ? '2rem' : '2.5rem'"
                    :width="mobileDev ? '2rem' : '2.5rem'"
                  />
                </div>
                <div class="flex w-full justify-center">
                  <IconsSocialYoutubeIcon
                    :height="mobileDev ? '2rem' : '2.5rem'"
                    :width="mobileDev ? '2rem' : '2.5rem'"
                  />
                </div>
                <div class="flex w-full justify-center">
                  <IconsSocialFacebookIcon
                    :height="mobileDev ? '2rem' : '2.5rem'"
                    :width="mobileDev ? '2rem' : '2.5rem'"
                  />
                </div>
                <div class="flex w-full justify-center">
                  <IconsSocialTwitterIcon
                    :height="mobileDev ? '2rem' : '2.5rem'"
                    :width="mobileDev ? '2rem' : '2.5rem'"
                  />
                </div>
              </div>
            </div>
          </div>
          <div class="hero-content text-center text-neutral-content">
            <div class="w-fit justify-center">
              <h1 class="mb-5 text-5xl sm:text-8xl font-bold text-white drop-shadow-lg">
                Amsterdam
              </h1>
              <button aria-label="Go to About Page" class="btn btn-primary normal-case text-base">
                Discover the city
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="drawer-side">
        <label class="drawer-overlay" for="my-drawer-3" />
        <ul class="menu overflow-y-auto w-80 bg-primary rounded-tl-3xl items-center">
          <li class="flex w-full grid grid-cols-3 p-0">
            <div class="flex justify-start">
              <label
                class="flex border-none text-white fill-white drawer-button pl-0"
                for="my-drawer-3"
              >
                <IconsCloseIcon class="icon-shadow fill-white" height="2rem" width="2rem" />
              </label>
            </div>
            <div class="flex col-span-2 justify-end">
              <button aria-label="Language Switch" class="flex items-center justify-center text-white fill-white mr-4">
                <IconsWorldwideIcon class="icon-shadow fill-white" height="1.5rem" width="1.5rem" />
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
                class="text-white text-center placeholder-white appearance-none bg-transparent py-1 w-full"
                placeholder="Search"
                type="text"
                @keyup.enter="search()"
              >
            </button>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full text-white justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/home"
            >
              Home
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink class="w-full justify-center border-b-2 border-[#601616] border-opacity-20" to="/events">
              Events
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/itineraries"
            >
              Itineraries
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/points-of-interest"
            >
              Points of Interest
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink class="w-full justify-center border-b-2 border-[#601616] border-opacity-20" to="/services">
              Services
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink class="w-full justify-center border-b-2 border-[#601616] border-opacity-20" to="/about">
              About Us
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink class="w-full justify-center border-b-2 border-[#601616] border-opacity-20" to="/contacts">
              Contacts
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink class="w-full justify-center border-b-2 border-[#601616] border-opacity-20" to="/tos">
              Terms Of Use
            </NuxtLink>
          </li>
          <li class="flex h-full w-full align-baseline justify-center">
            <div class=" flex h-full grid grid-rows-2">
              <div class="flex " />
              <div class=" grid grid-cols-4 gap-0 w-full h-full items-center">
                <IconsSocialFacebookIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialInstagramIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialTwitterIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
                />
                <IconsSocialYoutubeIcon
                  class="rounded-full icon-footer fill-primary p-1.5 aspect-square mx-auto my-auto h-fit"
                  height="2rem"
                  width="2rem"
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
  name: 'IndexPage',
  title: 'AMG',
  layout: 'empty',
  data () {
    return {
      mediaQuery: null,
      mobileDev: false,
      searchField: ''
    }
  },
  head () {
    return {
      meta: [{
        hid: 'keywords',
        name: 'keywords',
        content: 'index, Amsterdam, guide, tour, events, services, attractions'
      }]
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
  },
  methods: {
    search () {
      if (process.client) {
        window.location.href = '/search?input=' + this.searchField
      }
    }
  }
}
</script>

<style>
h1 {
  @apply text-2xl
}

li {
  @apply text-white;
  @apply text-sm;
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
