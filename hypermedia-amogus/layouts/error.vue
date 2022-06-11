<template>
  <div class="hero min-h-screen space">
    <div class="hero-content text-center">
      <div class="max-w-10/12">
        <img class="h-72 mx-auto mb-4" src="@/static/img/amogus.png">
        <h1 class="text-white font-ibm font-semibold mb-4">This page was ejected.</h1>
        <h2 class="text-white font-ibm font-semibold mb-4">4 Impostors remain.</h2>
        <button class="btn bg-[#181922] rounded-full normal-case border-none text-white text-xl" @click="previous">
          {{ error.statusCode === 404 ? 'Go Back' : 'Home' }}
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'empty',
  props: ['error'],
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
  background-image: url("static/img/space.jpg");
  background-size: cover;
}

.back-button {
  background-color: #181922;
}
</style>
