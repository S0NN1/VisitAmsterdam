<template>
  <div>
    <div class="drawer drawer-end">
      <input id="my-drawer-3" v-model="checked" class="drawer-toggle" type="checkbox">
      <div class="drawer-content flex flex-col ">
        <!-- Navbar -->
        <div class="w-full navbar bg-primary h-12">
          <div class="flex-1 sm:px-2 sm:mx-2">
            <NuxtLink id="logo-amsterdam" to="/">
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
                <div class="flex-none">
                  <div class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900 border-b-2">
                    <input
                      id="searchField-navbar"
                      v-model="searchField"
                      class="text-white placeholder-white appearance-none bg-transparent py-1 w-64"
                      placeholder=""
                      type="text"
                      @keyup.enter="search()"
                    >
                    <NuxtLink
                      :to="'/search?input=' + searchField"
                      class="flex"
                    >
                      <button aria-label="Search" class="flex items-center justify-centertext-white fill-white">
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
        <div v-if="!mobileDev" class="w-100 flex justify-end h-11">
          <div class="bg-base-100 w-fit drop-shadow-lg rounded-xl h-full">
            <ul class="menu menu-horizontal p-0 text-sm">
              <li>
                <NuxtLink to="/home">
                  <b
                    :class="$nuxt.$route.name==='home' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >Home</b>
                </NuxtLink>
              </li>
              <li tabindex="0">
                <NuxtLink to="/events">
                  <b
                    :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >Events</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/itineraries">
                  <b
                    :class="$nuxt.$route.name==='itineraries' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >Itineraries</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/points-of-interest">
                  <b
                    :class="$nuxt.$route.name==='points-of-interest' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >Point
                    of
                    Interests</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/services">
                  <b
                    :class="$nuxt.$route.name==='services' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >Services</b>
                </NuxtLink>
              </li>
              <li>
                <NuxtLink to="/about">
                  <b
                    :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-secondary' : ''"
                    class="text-[#16215b]"
                  >About</b>
                </NuxtLink>
              </li>
            </ul>
          </div>
          <div class="w-1/6" />
        </div>
        <div
          v-show="$store.state.custom_itinerary.stops.length > 0 && $store.state.custom_itinerary.modalOpened"
          class="absolute bottom-5 right-5 lg:bottom-20 lg:right-20 z-50 mt-5 lg:mt-0 lg:col-span-5 justify-center"
        >
          <div class="h-96 bg-base-100 w-full box-shadow-card rounded-3xl col-span-3 lg:col-span-2 px-6 py-5">
            <div class="card-title grid grid-cols-4">
              <h3 class="text-xl col-span-3">
                Your custom itinerary
              </h3>
              <div class="flex justify-end">
                <button aria-label="Close itinerary popup" @click="toggleModal">
                  <IconsCollapseIcon class="fill-secondary" height="1.5rem" width="1.5rem" />
                </button>
              </div>
            </div>
            <div class="card-body h-full text-ellipsis p-0 mt-2">
              <div class="overflow-auto box-scrollbar w-full">
                <div v-for="stop in $store.state.custom_itinerary.stops" :key="stop.name" class="mt-1">
                  <NuxtLink :to="'/points-of-interest/' + stop.id">
                    <li
                      class="text-secondary py-2 px-3 rounded-xl hover:bg-primary group transition-all hover:text-white"
                    >
                      <b class="text-md text-black group-hover:text-white">{{ stop.name }}</b>
                    </li>
                  </NuxtLink>
                </div>
              </div>
              <NuxtLink class="w-full" to="/custom_itinerary">
                <button
                  aria-label="Modify itinerary"
                  class="btn btn-secondary text-white normal-case text-xl mb-6 w-full rounded-full"
                >
                  <b>Modify</b>
                </button>
              </NuxtLink>
            </div>
          </div>
        </div>
        <div
          v-show="!$store.state.custom_itinerary.modalOpened"
          class="absolute bottom-5 right-5 lg:bottom-20 lg:right-20 z-50"
        >
          <button
            aria-label="Show custom itinerary badge"
            class="btn btn-circle btn-secondary h-16 w-16 opacity-70"
            @click="toggleModal"
          >
            <IconsExpandIcon class="fill-white" height="2rem" width="2rem" />
          </button>
        </div>
        <Nuxt :class="mobileDev ? 'mb-0' : 'mb-24'" :style="mobileDev ? '' : 'margin-top: -2.75rem'" />
        <FooterNav :mobile="mobileDev" />
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
              @click.native="closeDrawer()"
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
  watch: {
    $route () {
      setTimeout(function () {
        document.getElementById('logo-amsterdam').scrollIntoView({
          behavior: 'smooth',
          block: 'nearest',
          inline: 'nearest'
        })
      }, 100)
    }
  },
  beforeCreate () {
    if (process.client) {
      this.$store.commit('custom_itinerary/RETRIEVE_STATE')
    }
  },
  created () {
    this.$nuxt.$on('closeDrawer', $event => this.closeDrawer($event))
    if (process.client) {
      this.$store.subscribe((mutation, state) => {
        localStorage.setItem('store', JSON.stringify(state))
      })
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
    toggleModal () {
      this.$store.commit('custom_itinerary/TOGGLE_MODAL')
      this.$forceUpdate()
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

.box-scrollbar::-webkit-scrollbar {
  width: 10px;
}

/* Track */
.box-scrollbar::-webkit-scrollbar-track {
  background: #e4e5ee;
  border-radius: 10px;
  margin-right: 20px;
}

/* Handle */
.box-scrollbar::-webkit-scrollbar-thumb {
  background: #0d99ff;
  border-radius: 10px;
}
</style>
