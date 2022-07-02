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
/**
 * Hero image used to display single topic image when [**CarouselItem**](#carouselitem) is not used.
 * Also used in search/events pages with a title.
 */
export default {
  name: 'HeroImage',
  props: {
    /**
     * Hero image title, replacing the default background image.
     * @values null, '...'
     */
    title: {
      type: String,
      default: null
    }
  }
}
</script>

<style scoped>

</style>
