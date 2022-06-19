<template>
  <div>
    <div
      :style="title === null ? {'background-image': 'url(\'' + require('@/static/img/events-hero.webp') + '\')'} : ''"
      class="flex hero-image-container w-full h-96  items-center justify-center bg-[#68BAFF] box-shadow-card-figure bg-cover bg-center"
    >
      <h2 class="text-white">
        {{ title }}
      </h2>
    </div>
  </div>
</template>

<script>

export default {
  name: 'HeroImage',
  props: {
    title: {
      type: String,
      default: null
    }
  }
}
</script>

<style scoped>

</style>
