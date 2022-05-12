<template>
  <svg
    xmlns="http://www.w3.org/2000/svg"
    viewBox="0 0 127.58 193.61"
    :width="width"
    :height="height"
  >
    <g id="a" />
    <g id="b">
      <g id="c">
        <path
          d="M64.08,193.61c-11.68-1.56-23.21-2.26-34.33-4.77C9.95,184.37-.41,172.18,.01,151.95c.65-31.52,14.08-56.66,42.54-71.74,18.95-10.04,37.4-6.16,53.63,6.82,19.92,15.93,30.44,37.1,31.35,62.64,.74,20.84-8.77,34.01-29.04,38.96-11.23,2.74-22.96,3.4-34.41,4.98Z"
        />
        <path
          d="M95.88,32.26c.02,17.98-14.26,32.22-32.36,32.29-17.47,.07-31.95-14.53-31.97-32.24C31.53,14.61,46-.03,63.46,0c18.06,.03,32.39,14.3,32.41,32.26Z"
        />
      </g>
    </g>
  </svg>
</template>

<script>
export default {
  name: 'UserIcon',
  props: {
    width: {
      type: [Number, String],
      default: 18
    },
    height: {
      type: [Number, String],
      default: 18
    }
  }
}
</script>

<style scoped>

</style>
