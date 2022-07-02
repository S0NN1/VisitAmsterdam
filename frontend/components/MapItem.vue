<template>
  <div class="mt-10">
    <div id="mapid" ref="mapElement" :style="'height: ' + height" class="flex w-full z-0 aspect-square sm:aspect-auto" />
  </div>
</template>

<script>
if (process.browser) {
  require('leaflet')
  require('leaflet-routing-machine')
}
/**
 * Map component used to display points of interest, itineraries or custom ones.
 * It uses leaflet API to retrieve the Open Street Maps frame with waypoints in case of an itinerary
 * (leaflet-routing-machine).
 */
export default {
  props: {
    /**
     * Marker used to highlight single POIs or itinerary's stops; when clicked it redirects to Google Maps destination
     * route APIs.
     * @values [], [...]
     */
    markers: {
      type: Array,
      default: () => []
    },
    /**
     *Waypoints used to create an itinerary through Leaflet Routing Machine API.
     * @values [], [...]
     */
    waypoints: {
      type: Array,
      default: () => []
    },
    /**
     * The height of the map.
     * @values rm, px
     */
    height: {
      type: String,
      default: '40rem'
    }
  },
  data () {
    return {
      routing: undefined
    }
  },
  mounted () {
    // Initialize map with markers and waypoints
    const amsterdamMap = L.map(this.$refs.mapElement).setView([52.3676, 4.9041], 12)
    L.tileLayer('https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=6UTZST2LyhoL0xf1DsSd#12.9/50.86639/4.31451', {
      maxZoom: 18,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1
    }).addTo(amsterdamMap)
    if (this.markers.length > 0) {
      this.markers.forEach(function (marker) {
        L.marker([marker.latitude, marker.longitude]).addTo(amsterdamMap).bindPopup('<a href="https://www.google.com/maps/dir/?api=1&destination=' + marker.address + '&travelmode=walking&dir_action=navigate" target="_blank">' + marker.address + '</a>').openPopup()/* .on('click', function () {
          window.open('https://www.google.com/maps/dir/?api=1&destination=' + marker.address + '&travelmode=walking&dir_action=navigate', '_blank')
        }) */
      })
    }
    if (this.waypoints.length > 0) {
      const leafletWaypoints = []
      this.waypoints.forEach(function (waypoint) {
        leafletWaypoints.push(L.latLng(waypoint.latitude, waypoint.longitude))
      })
      const that = this
      const routing = L.Routing.control({
        createMarker (waypointIndex, waypoint) {
          return L.marker(waypoint.latLng)
            .bindPopup('<a href="https://www.google.com/maps/dir/?api=1&destination=' + that.waypoints[waypointIndex].address + '&travelmode=walking&dir_action=navigate" target="_blank">' + that.waypoints[waypointIndex].address + '</a>').openPopup()/* .on('click', function () {
              window.open('https://www.google.com/maps/dir/?api=1&destination=' + that.waypoints[waypointIndex] + '&travelmode=walking&dir_action=navigate', '_blank')
            }) */
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
      this.routing = routing
    }
  },
  methods: {
    /**
     * Method used to update waypoints when their order is changed in custom itinerary page.
     * @param waypoints updated waypoints.
     * @public
     */
    updateWaypoints (waypoints) {
      const leafletWaypoints = []
      waypoints.forEach(function (waypoint) {
        leafletWaypoints.push(L.latLng(waypoint.latitude, waypoint.longitude))
      })
      this.routing.setWaypoints(leafletWaypoints)
      this.routing.route()
    }
  }
}
</script>
