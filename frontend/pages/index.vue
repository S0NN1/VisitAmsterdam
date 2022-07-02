<template>
  <div :style="{'background-image': 'url(' + require('@/static/img/amsterdam-index.webp') + ')'}" class="bg-cover">
    <div class="drawer drawer-end">
      <input id="my-drawer-3" :v-model="checked" class="drawer-toggle" type="checkbox">
      <div class="drawer-content flex flex-col max-h-full">
        <!-- Navbar -->
        <div class="w-full navbar bg-black bg-opacity-20">
          <div class="flex-1 sm:px-2 sm:mx-2">
            <NuxtLink to="/">
              <span class="flex text-2xl text-white">
                <svg
                  class="mr-3"
                  fill="none"
                  height="2rem"
                  viewBox="0 0 176 176"
                  width="2rem"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M108.93 137.18L131.11 159.36C139.07 167.32 151.96 167.32 159.92 159.36C167.88 151.4 167.88 138.51 159.92 130.55L132.99 103.62C125.03 95.6604 112.14 95.6604 104.18 103.62L60.1602 147.64"
                    stroke="white"
                    stroke-linecap="round"
                    stroke-miterlimit="10"
                    stroke-width="20"
                  />
                  <path
                    d="M28.19 115.73L15.97 127.95C8.01 135.91 8.01 148.8 15.97 156.76L18.8 159.53L19.12 159.85C27.08 167.81 39.97 167.81 47.93 159.85L60.15 147.63"
                    stroke="white"
                    stroke-linecap="round"
                    stroke-miterlimit="10"
                    stroke-width="20"
                  />
                  <path
                    d="M28.1902 115.73L72.2102 71.71C80.1702 63.75 80.1702 50.86 72.2102 42.9L45.2702 15.97C37.3102 8.01 24.4202 8.01 16.4602 15.97C8.50023 23.93 8.50023 36.82 16.4602 44.78L38.6402 66.96"
                    stroke="white"
                    stroke-linecap="round"
                    stroke-miterlimit="10"
                    stroke-width="20"
                  />
                  <path
                    d="M141.689 57.6893C153.608 57.6893 163.269 48.0276 163.269 36.1093C163.269 24.191 153.608 14.5293 141.689 14.5293C129.771 14.5293 120.109 24.191 120.109 36.1093C120.109 48.0276 129.771 57.6893 141.689 57.6893Z"
                    stroke="white"
                    stroke-linecap="round"
                    stroke-miterlimit="10"
                    stroke-width="20"
                  />
                </svg>

                <b>VisitAmsterdam</b>
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
            <div class="flex h-5/6 bg-black bg-opacity-20" />
            <div
              class="flex h-1/6 grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 align-baseline gap-6 text-white fill-white bg-black bg-opacity-20"
            >
              <div class="flex w-full justify-center grid grid-cols-4 gap-3 items-center">
                <div class="flex w-full justify-center">
                  <a
                    class="justify-center"
                    href="https://www.facebook.com/iamsterdam/"
                    target="_blank"
                  >
                    <IconsSocialFacebookIcon
                      :height="mobileDev ? '2rem' : '2.5rem'"
                      :width="mobileDev ? '2rem' : '2.5rem'"
                      class="fill-white"
                    />
                  </a>
                </div>
                <div class="flex w-full justify-center">
                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.facebook.com/iamsterdam/"
                    target="_blank"
                  >
                    <IconsSocialInstagramIcon
                      :height="mobileDev ? '2rem' : '2.5rem'"
                      :width="mobileDev ? '2rem' : '2.5rem'"
                      class="fill-white"
                    />
                  </a>
                </div>
                <div class="flex w-full justify-center">
                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.facebook.com/iamsterdam/"
                    target="_blank"
                  >
                    <IconsSocialTwitterIcon
                      :height="mobileDev ? '2rem' : '2.5rem'"
                      :width="mobileDev ? '2rem' : '2.5rem'"
                      class="fill-white"
                    />
                  </a>
                </div>
                <div class="flex w-full justify-center">
                  <a
                    class="justify-center mx-auto my-auto"
                    href="https://www.facebook.com/iamsterdam/"
                    target="_blank"
                  >
                    <IconsSocialYoutubeIcon
                      :height="mobileDev ? '2rem' : '2.5rem'"
                      :width="mobileDev ? '2rem' : '2.5rem'"
                      class="fill-white"
                    />
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="hero-content text-center text-neutral-content">
            <div class="w-fit justify-center">
              <h1 class="mb-5 text-5xl sm:text-8xl font-bold text-white drop-shadow-lg">
                Amsterdam
              </h1>
              <NuxtLink to="/about">
                <button aria-label="Go to About Page" class="btn btn-primary normal-case text-base">
                  Discover the city
                </button>
              </NuxtLink>
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
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/events"
              @click.native="closeDrawer()"
            >
              Events
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/itineraries"
              @click.native="closeDrawer()"
            >
              Itineraries
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/points-of-interest"
              @click.native="closeDrawer()"
            >
              Points of Interest
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/services"
              @click.native="closeDrawer()"
            >
              Services
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/about"
              @click.native="closeDrawer()"
            >
              About Us
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/contacts"
              @click.native="closeDrawer()"
            >
              Contacts
            </NuxtLink>
          </li>
          <li class="sidebar-li w-full px-4">
            <NuxtLink
              class="w-full justify-center border-b-2 border-[#601616] border-opacity-20"
              to="/tos"
              @click.native="closeDrawer()"
            >
              Terms Of Use
            </NuxtLink>
          </li>
          <li class="flex h-full w-full align-baseline justify-center">
            <div class=" flex h-full grid grid-rows-2">
              <div class="flex " />
              <div class=" grid grid-cols-4 gap-0 w-full h-full items-center">
                <a
                  class="justify-center mx-auto my-auto"
                  href="https://www.facebook.com/iamsterdam/"
                  target="_blank"
                >
                  <IconsSocialFacebookIcon
                    class="rounded-full icon-footer fill-primary p-1.5 aspect-square h-fit"
                    height="1.7rem"
                    width="1.7rem"
                  />
                </a>
                <a
                  class="justify-center mx-auto my-auto"
                  href="https://www.instagram.com/iamsterdam/?hl=en"
                  target="_blank"
                >
                  <IconsSocialInstagramIcon
                    class="rounded-full icon-footer fill-primary p-1.5 aspect-square h-fit"
                    height="1.7rem"
                    width="1.7rem"
                  />
                </a>

                <a
                  class="justify-center mx-auto my-auto"
                  href="https://twitter.com/Iamsterdam?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
                  target="_blank"
                >
                  <IconsSocialTwitterIcon
                    class="rounded-full icon-footer fill-primary p-1.5 aspect-square h-fit"
                    height="1.7rem"
                    width="1.7rem"
                  />
                </a>

                <a
                  class="justify-center mx-auto my-auto"
                  href="https://www.youtube.com/channel/UCWx6OvwjIbSDpoc3L0vVPIg"
                  target="_blank"
                >
                  <IconsSocialYoutubeIcon
                    class="rounded-full icon-footer fill-primary p-1.5 aspect-square  h-fit"
                    height="1.7rem"
                    width="1.7rem"
                  />
                </a>
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
  title: 'VisitAmsterdam',
  layout: 'empty',
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
