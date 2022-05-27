<template>
  <div>
    <div class="container mx-auto w-10/12 justify-center mb-40 mt-20">
      <h2>Latest Events</h2>
      <CarouselItem />
      <div class="divider"/>

      <div class="grid grid-cols-2">
        <div>
          <h2>Brief history of Amsterdam</h2>
          <p class="m-4 text-justify">
            YĪN YĪN is inspired by the psychedelic Thai funk of the 60s and 70s and combines this with disco, funk and electronica to create drawn-out spaced-out improvisations and dance floor squats.
            YĪN YĪN's second album The Age Of Aquarius was released on Glitterbeat on March 4th. They released their debut The Rabbit That Hunts Tigers on tape, followed by two 7” vinyl singles (with the Paradiso Vinyl Club and Bongo Joe Records). The record took them to stages all over Europe.
          </p>
          <div class="text-center">
            <div class="btn btn-lg btn-primary rounded-full">Discover</div>
          </div>
        </div>
        <div>
          <CardItem type="FIGURE" class="w-full"></CardItem>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HomePage'
}
</script>

<style scoped>

</style>
