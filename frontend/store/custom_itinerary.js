export const strict = false

export const state = () => ({
  name: '',
  stops: []
})
export const getter = {
  getName: (state) => {
    return state.name
  },
  getStops: (state) => {
    return state.stops
  }
}
export const mutations = {
  ADD_STOP (state, stop) {
    // if (!state.stops.includes(stop)) {
    state.stops.push(stop)
    // }
  },
  REMOVE_STOP (state, { stop }) {
    state.stops.splice(state.stops.indexOf(stop), 1)
  },
  REORDER_STOP (state, stops) {
    state.stops = stops
  },
  RENAME (state, name) {
    state.name = name
  }
}
