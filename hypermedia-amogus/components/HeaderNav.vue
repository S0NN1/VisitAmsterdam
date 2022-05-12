<template>
  <div>
    <div class="flex w-100 pl-10 mt-0 h-auto" style="background-color: #f05a28">
      <div class="w-3/5 flex items-center">
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
      <div class="flex-none mr-5">
        <div class="flex appearance-none my-1 sm:max-w-screen-sm text-stone-900 border-b-2">
          <input
            type="text"
            class="text-white placeholder-white appearance-none bg-transparent py-1 w-64"
            placeholder=""
          >
          <button class="flex items-center justify-center text-white">
            <svg class="w-6 h-6" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
              <path
                d="M16.32 14.9l5.39 5.4a1 1 0 0 1-1.42 1.4l-5.38-5.38a8 8 0 1 1 1.41-1.41zM10 16a6 6 0 1 0 0-12 6 6 0 0 0 0 12z"
              />
            </svg>
          </button>
        </div>
      </div>
      <div class="flex-1 flex items-center">
        <p class="">
          Icone
        </p>
      </div>
    </div>
    <div class="w-100 flex justify-end">
      <div class="bg-base-100 w-fit drop-shadow-lg rounded-xl">
        <ul class="menu menu-horizontal p-0 text-sm">
          <li>
            <NuxtLink to="/">
              <b :class="$nuxt.$route.name==='index' ? 'underline decoration-2 decoration-sky-500' : ''">Home</b>
            </NuxtLink>
          </li>
          <li tabindex="0">
            <NuxtLink to="events">
              <b :class="$nuxt.$route.name==='events' ? 'underline decoration-2 decoration-sky-500' : ''">Events</b>
              <!--              <svg class="fill-current" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                              <path d="M7.41,8.58L12,13.17L16.59,8.58L18,10L12,16L6,10L7.41,8.58Z"/>
                            </svg>-->
            </NuxtLink>
          </li>
          <li>
            <NuxtLink to="#">
              <b :class="$nuxt.$route.name==='itineraries' ? 'underline decoration-2 decoration-sky-500' : ''">Itineraries</b>
            </NuxtLink>
          </li>
          <li>
            <NuxtLink to="#">
              <b :class="$nuxt.$route.name==='pois' ? 'underline decoration-2 decoration-sky-500' : ''">Point of
                Interests</b>
            </NuxtLink>
          </li>
          <li>
            <NuxtLink to="#">
              <b :class="$nuxt.$route.name==='about' ? 'underline decoration-2 decoration-sky-500' : ''">About</b>
            </NuxtLink>
          </li>
        </ul>
      </div>
      <div class="w-1/5" />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'HeaderNav'
})
</script>

<style scoped>
input:focus {
  border: none;
  outline: none;
}

</style>
