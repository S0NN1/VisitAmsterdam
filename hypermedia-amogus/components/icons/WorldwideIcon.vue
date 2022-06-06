<template>
  <img
    :src="require('@/static/img/' + image + '.png')"
    :style="'height: ' + height + '; width: ' + width"
    alt="language"
  >
</template>

<script>
export default {
  name: 'WorldwideIcon',
  props: {
    width: {
      type: [Number, String],
      default: 18
    },
    height: {
      type: [Number, String],
      default: 18
    },
    image: {
      type: String,
      default: 'united-kingdom'
    }
  }
}
</script>

<style scoped>

</style>
