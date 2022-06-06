<template>
  <div class="bg-cover" :style="{'background-image': 'url(' + require('@/static/img/amsterdam.jpg') + ')'}">
    <div class="drawer drawer-end">
      <input id="my-drawer-3" type="checkbox" class="drawer-toggle">
      <div class="drawer-content flex flex-col max-h-full">
        <!-- Navbar -->
        <div class="w-full navbar bg-none">
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
                <NuxtLink to="#">
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
        <div
          class="hero h-full"
        >
          <div class="hero-overlay" style="background-color: transparent !important;">
            <div class="flex h-5/6" />
            <div
              class="h-1/6"
            >
              <div class="flex w-full p-6">
                <div class="flex fill-white">
                  <div class="mx-6">
                    <IconsSocialInstagramIcon width="2rem" height="2rem" />
                  </div>
                  <div class="mx-6">
                    <IconsSocialYoutubeIcon width="2rem" height="2rem" />
                  </div>
                  <div class="mx-6">
                    <IconsSocialFacebookIcon width="2rem" height="2rem" />
                  </div>
                  <div class="mx-6">
                    <IconsSocialTwitterIcon width="2rem" height="2rem" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="hero-content text-center text-neutral-content">
            <div class="w-fit justify-center">
              <h1 class="mb-5 text-5xl sm:text-8xl font-bold text-white drop-shadow-lg">
                Amsterdam
              </h1>
              <button class="btn btn-primary">
                //TODO
              </button>
            </div>
          </div>
        </div>
      </div>
      <div class="drawer-side">
        <label for="my-drawer-3" class="drawer-overlay" />
        <ul class="menu overflow-y-auto w-80 bg-primary rounded-tl-3xl items-center">
          <li class="flex w-full grid grid-cols-3 p-0">
            <div class="flex justify-start">
              <label
                for="my-drawer-3"
                class="flex btn btn-primary border-none text-white fill-white drawer-button pl-0"
              >
                <IconsCloseIcon class="icon-shadow fill-white" width="2rem" height="2rem" />
              </label>
            </div>
            <div class="flex col-span-2 justify-end">
              <button class="flex items-center justify-center text-white fill-white mr-4">
                <IconsWorldwideIcon class="icon-shadow fill-white" width="1.5rem" height="1.5rem" />
              </button>
              <button class="flex items-center justify-center text-white fill-white">
                <IconsUserIcon class="icon-shadow fill-white" width="1.5rem" height="1.5rem" />
              </button>
            </div>
          </li>

          <!-- Sidebar content here -->
          <li class="sidebar-li w-full">
            <button class="flex items-center justify-center text-white">
              <div
                class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900"
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
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/home" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Home
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/events" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Events
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/itineraries" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Itineraries
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/points-of-interest" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Points of Interest
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/services" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Services
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/about" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                About Us
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/contacts" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Contacts
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
          <li class="sidebar-li w-full">
            <NuxtLink to="/tos" class="w-full justify-center">
              <button class="flex items-center justify-center text-white">
                Terms Of Use
              </button>
            </NuxtLink>
          </li>
          <div class="border-b-2 border-[#601616] border-opacity-20 h-2 w-11/12" />
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

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'IndexPage',
  layout: 'empty'
})
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
