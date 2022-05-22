const leaflet = require('leaflet')
<template>
  <div>
    <div id="map-wrap" style="height: 100vh">
      <client-only>
        <l-map ref="myMap" :zoom="13" :center="[latitude,longitude]" @ready="onMapReady">
          <l-tile-layer
            url="https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=6UTZST2LyhoL0xf1DsSd#12.9/50.86639/4.31451"
          />
        </l-map>
      </client-only>
    </div>
  </div>
</template>

<script>
if (process.browser) {
  require('leaflet')
  require('leaflet-routing-machine')
}
export default {
  props: {
    latitude: {
      type: Number,
      default: 52.379189
    },
    longitude: {
      type: Number,
      default: 4.899431
    }
  },
  methods: {
    onMapReady () {
      const mapTemp = this.$refs.myMap.mapObject
      console.log(mapTemp)
      const routing = L.Routing.control({
        waypoints: [
          L.latLng(57.74, 11.949),
          L.latLng(57.72, 11.949)
        ],
        lineOptions: {
          addWaypoints: false
        },
        draggableWaypoints: false
      }).addTo(mapTemp)

      const routingControlContainer = routing.getContainer()
      const controlContainerParent = routingControlContainer.parentNode
      controlContainerParent.removeChild(routingControlContainer)
    }
  }
}
</script>

<style scoped>

</style>
