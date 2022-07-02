<template>
  <svg
    :height="height"
    :width="width"
    viewBox="0 0 16 16"
    xmlns="http://www.w3.org/2000/svg"
  >
    <path
      d="M0,9l4,1.5L6,16l2.861-3.82L14,14l2-14L0,9z M7.169,11.44l-0.916,2.485l-1.086-3.118l8.402-7.631L7.169,11.44z"
    />
  </svg>
</template>

<script>
/**
 * Paper Plane icon used in home page Discover button, it redirects to the About Us page.
 */
export default {
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
    }
  }
}
</script>
