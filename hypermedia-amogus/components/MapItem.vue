const leaflet = require('leaflet')
<template>
  <div class="mt-10">
    <div id="mapid" ref="mapElement" class="flex w-full z-0" />
  </div>
</template>

<script>
if (process.browser) {
  require('leaflet')
  require('leaflet-routing-machine')
}
export default {
  props: {
    markers: {
      type: Array,
      default: () => []
    },
    waypoints: {
      type: Array,
      default: () => []
    }
  },
  mounted () {
    // center map to Amsterdam
    const amsterdamMap = L.map(this.$refs.mapElement).setView([52.3676, 4.9041], 13)
    L.tileLayer('https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=6UTZST2LyhoL0xf1DsSd#12.9/50.86639/4.31451', {
      maxZoom: 18,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1
    }).addTo(amsterdamMap)
    if (this.markers.length > 0) {
      this.markers.forEach(function (marker) {
        L.marker([marker.latitude, marker.longitude]).addTo(amsterdamMap).bindPopup(marker.address).openPopup().on('click', function () {
          window.open('https://www.google.com/maps/dir/?api=1&destination=' + marker.address + '&travelmode=walking&dir_action=navigate', '_blank')
        })
      })
    }
    if (this.waypoints.length > 0) {
      const leafletWaypoints = []
      this.waypoints.forEach(function (waypoint) {
        leafletWaypoints.push(L.latLng(waypoint.latitude, waypoint.longitude))
      })
      const routing = L.Routing.control({
        createMarker (waypointIndex, waypoint) {
          return L.marker(waypoint.latLng)
            .bindPopup(this.waypoints[waypointIndex].address).openPopup().on('click', function () {
              window.open('https://www.google.com/maps/dir/?api=1&destination=' + this.waypoints[waypointIndex] + '&travelmode=walking&dir_action=navigate', '_blank')
            })
        },
        waypoints: leafletWaypoints,
        lineOptions: {
          addWaypoints: false
        },
        draggableWaypoints: false
      }).addTo(amsterdamMap)

      const routingControlContainer = routing.getContainer()
      const controlContainerParent = routingControlContainer.parentNode
      controlContainerParent.removeChild(routingControlContainer)
    }
  }
}
</script>

<style scoped>
#mapid {
  height: 40rem;
  width: 100%;
}
</style>
