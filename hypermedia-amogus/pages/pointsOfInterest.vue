<template>
  <div class="container mx-auto w-10/12 justify-center">
    <div class="m-6">
      <h2 class="flex w-full mb-9">
        All points of interest
      </h2>
      <AllCardsSection />
    </div>
  </div>
</template>

<script>

import AllCardsSection from '../components/AllCardsSection'
export default {
  name: 'PointsOfInterestPage',
  components: { AllCardsSection }
}

</script>

<style scoped>

</style>
