<template>
  <svg
    :height="height"
    :width="width"
    viewBox="0 0 236.14 237.3"
    xmlns="http://www.w3.org/2000/svg"
  >
    <g id="a" />
    <g id="b">
      <g id="c">
        <path
          d="M166.38,187.52c-8.03,4.21-15.11,8.64-22.71,11.8-31.72,13.2-62.84,11.33-92.49-5.94C21.84,176.28,4.52,150.34,.8,116.68-3.8,75.03,11.41,40.95,46.53,18.04c37.81-24.66,77.11-23.63,115.05,.58,46.14,29.44,59.45,96.5,28.57,141.67-3.19,4.67-2.95,7.13,1.06,10.98,13.22,12.69,26.19,25.66,38.85,38.91,2.88,3.02,5.2,7.44,5.87,11.53,1.11,6.82-2.19,11.66-8.45,14.24-5.63,2.32-11.19,1.79-15.71-2.66-12.71-12.51-25.32-25.11-37.92-37.72-2.7-2.7-5.21-5.61-7.46-8.04Zm10.78-83.64c-.22-40.96-33.58-74.08-74.27-73.74-40.77,.34-73.86,33.85-73.61,74.54,.25,40.45,33.77,73.63,74.13,73.39,40.97-.25,73.97-33.45,73.75-74.19Z"
        />
      </g>
    </g>
  </svg>
</template>

<script>
/**
 * Search icon used in both Search page and desktop navbar (mobile drawer).
 * It redirects to Search Page with input query parameter equal to related input value.
 */
export default {
  name: 'SearchIcon',
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
