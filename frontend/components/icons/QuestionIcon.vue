<template>
  <svg
    :height="height"
    :width="width"
    viewBox="0 0 192.06 192.06"
    xmlns="http://www.w3.org/2000/svg"
  >
    <g id="a" />
    <g id="b">
      <g id="c">
        <path
          d="M96.03,14c45.23,0,82.03,36.8,82.03,82.03s-36.8,82.03-82.03,82.03S14,141.26,14,96.03,50.8,14,96.03,14m0-14C42.99,0,0,42.99,0,96.03s42.99,96.03,96.03,96.03,96.03-42.99,96.03-96.03S149.06,0,96.03,0h0Z"
        />
        <path
          d="M96.03,31.13c-35.84,0-64.9,29.05-64.9,64.9s29.05,64.9,64.9,64.9,64.9-29.05,64.9-64.9S131.87,31.13,96.03,31.13Zm.67,113.52c-7.21,0-12.37-5.28-12.37-11.72s5.15-11.47,12.37-11.47,12.37,4.9,12.37,11.47-5.15,11.72-12.37,11.72Zm9.66-32.34h-19.45c0-18.04,20.1-22.03,20.1-33.24,0-6.31-5.54-10.31-13.91-10.31s-14.56,3.61-18.68,9.53l-15.59-9.15c6.96-10.56,19.07-17.26,36.46-17.26,19.32,0,32.72,8.63,32.72,23.83,0,20.61-21.64,22.93-21.64,36.59Z"
        />
      </g>
    </g>
  </svg>
</template>

<script>
/**
 * Question mark icon used in desktop navbar, redirecting to Contacts page.
 */
export default {
  name: 'QuestionIcon',
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

<style scoped>

</style>
