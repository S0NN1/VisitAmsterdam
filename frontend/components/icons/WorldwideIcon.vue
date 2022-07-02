<template>
  <img
    :src="require('@/static/img/' + image + '.webp')"
    :style="'height: ' + height + '; width: ' + width"
    alt="language"
  >
</template>

<script>
/**
 * Language icon used in drawer/navbar to switch website language [future work].
 */
export default {
  name: 'WorldwideIcon',
  props: {
    /**
     * The width of the icon
     * @values rm, px
     */
    width: {
      type: [Number, String],
      default: 18
    },
    /**
     * The height of the icon
     * @values rm, px
     */
    height: {
      type: [Number, String],
      default: 18
    },
    /**
     * The country language of the website [future work]
     * @values united-kingdom, italy
     */
    image: {
      type: String,
      default: 'united-kingdom'
    }
  }
}
</script>

<style scoped>

</style>
