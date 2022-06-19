export const strict = false

export const state = () => ({
  name: '',
  stops: []
})

const getDefaultState = () => {
  return {
    name: '',
    stops: []
  }
}

export const getter = {
  getName: (state) => {
    return state.name
  },
  getStops: (state) => {
    return state.stops
  }
}
export const mutations = {
  RETRIEVE_STATE (state) {
    // Check if the ID exists
    if (localStorage.getItem('store')) {
      // Replace the state object with the stored item
      this.replaceState(
        Object.assign(state, JSON.parse(localStorage.getItem('store')))
      )
    }
  },
  ADD_STOP (state, stop) {
    // if (!state.stops.includes(stop)) {
    state.stops.push(stop)
    // }
  },
  RESET_STATE (state) {
    Object.assign(state, getDefaultState())
  },
  REMOVE_STOP (state, { stop }) {
    state.stops.splice(state.stops.indexOf(stop), 1)
  },
  REORDER_STOP (state, from, to) {
    const f = state.stops.splice(from, 1)[0]
    state.stops.splice(to, 0, f)
  },
  RENAME (state, name) {
    state.name = name
  }
}
