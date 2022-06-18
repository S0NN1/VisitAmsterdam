<template>
  <div
    :style="{'background-image': 'url(\'' + require('@/static/img/events-hero.webp') + '\')'}"
    class="flex hero-image-container w-full h-96 lg:h-2/5 items-center justify-center bg-secondary bg-opacity-30 box-shadow-card-figure bg-cover bg-center"
  />
</template>

<script>

export default {
  name: 'HeroImage'
}
</script>

<style scoped>

</style>
