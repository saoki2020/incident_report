import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    jobs: []
  },
  getters: {
    getJobs(state) {
      return state.jobs
    }
  },
  mutations: {

  },
  actions: {
    // axiosGetJobs({commit, getters}) {
    //   axios.get()
    // }
  },
  modules: {
  }
})
