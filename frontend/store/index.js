export const state = () => ({
  itinerary: {
    name: '',
    stops: []
  }
})
export const getter = {
  getItinerary: (state) => {
    return state.itinerary
  }
}
export const mutations = {
  ADD (state, stop) {
    state.itinerary.stops.push(
      stop)
  },
  REMOVE (state, { stop }) {
    state.itinerary.stops.splice(state.itinerary.stops.indexOf(stop), 1)
  },
  REORDER (state, stops) {
    state.itinerary.stops = stops
  },
  RENAME (state, name) {
    state.itinerary.name = name
  }
}
