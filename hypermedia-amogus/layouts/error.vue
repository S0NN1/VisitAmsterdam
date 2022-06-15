<template>
  <div class="hero min-h-screen space">
    <div class="hero-content text-center">
      <div class="max-w-10/12">
        <img class="h-72 mx-auto mb-4" src="@/static/img/amogus.webp" alt="error-icon">
        <h1 class="text-white font-ibm font-semibold mb-4">
          This page was ejected.
        </h1>
        <h2 class="text-white font-ibm font-semibold mb-4">
          4 Impostors remain.
        </h2>
        <button
          aria-label="Back to Home"
          class="btn bg-[#181922] rounded-full normal-case border-none text-white text-xl"
          @click="previous"
        >
          {{ error.statusCode === 404 ? 'Go Back' : 'Home' }}
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ErrorPage',
  layout: 'empty',
  props: ['error'],
  title: 'Error',
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
  methods: {
    previous () {
      if (this.error.statusCode === 404) {
        this.$router.go(-1)
      } else {
        this.$router.push('/home')
      }
    }
  }
}
</script>
<style>
.space {
  background-image: url("static/img/space.webp");
  background-size: cover;
}

.back-button {
  background-color: #181922;
}
</style>
