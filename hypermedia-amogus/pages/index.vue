<template>
  <div class="hero min-h-screen" :style="{'background-image': 'url(' + require('@/static/img/amsterdam.jpg') + ')'}">
    <div class="hero-overlay">
      <div class="flex w-full h-fit">
        <HeaderIndexNav />
      </div>
      <div class="flex h-5/6" />
      <div
        class="h-fit"
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
        <h1 class="mb-5 text-8xl font-bold">
          Amsterdam
        </h1>
        <button class="btn btn-primary">
          //TODO
        </button>
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
