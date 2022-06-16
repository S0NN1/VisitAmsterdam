<template>
  <Nuxt />
</template>
<script>
export default {
  head () {
    return {
      link: [
        {
          rel: 'canonical',
          href: 'https://hyp.lucapirovano.com' + this.$route.path
        }
      ]
    }
  }
}
</script>
