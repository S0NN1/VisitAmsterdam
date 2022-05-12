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
              <InstagramIcon width="2rem" height="2rem" />
            </div>
            <div class="mx-6">
              <YoutubeIcon width="2rem" height="2rem" />
            </div>
            <div class="mx-6">
              <FacebookIcon width="2rem" height="2rem" />
            </div>
            <div class="mx-6">
              <TwitterIcon width="2rem" height="2rem" />
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
import InstagramIcon from '~/components/icons/social/InstagramIcon.vue'
import YoutubeIcon from '~/components/icons/social/YoutubeIcon.vue'
import FacebookIcon from '~/components/icons/social/FacebookIcon.vue'
import TwitterIcon from '~/components/icons/social/TwitterIcon.vue'

export default Vue.extend({
  name: 'IndexPage',
  components: { TwitterIcon, FacebookIcon, YoutubeIcon, InstagramIcon },
  layout: 'empty'
})
</script>
