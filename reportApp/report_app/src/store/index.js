import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    jobs: [],
    depts: [],
    scenes: [],
    contents: [],
    details: [],
    mistakes: [],
    dests: [],
    postResult: [],
    postError: []
  },
  getters: {
    getJobs(state) {
      return state.jobs
    },
    getDepts(state) {
      return state.depts
    },
    getScene(state) {
      return state.scenes
    },
    getContents(state) {
      return state.contents
    },
    getDetails(state) {
      return state.details
    },
    getMistakes(state) {
      return state.mistakes
    },
    getDests(state) {
      return state.dests
    },
    getResult(state) {
      return state.postResult
    },
    getError(state) {
      return state.postError
    },
  },
  mutations: {
    setJobs(state, value) {
      state.jobs = value
    },
    setDepts(state, value) {
      state.depts = value
    },
    setScenes(state, value) {
      state.scenes = value
    },
    setContents(state, value) {
      state.contents = value
    },
    setDetails(state, value) {
      state.details = value
    },
    setMistakes(state, value) {
      state.mistakes = value
    },
    setDests(state, value) {
      state.dests = value
    },
    setResult(state, value) {
      state.postResult = value
    },
    setError(state, value) {
      state.postError = value
    },
  },
  actions: {
    async axiosGetJobs({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/jobs")
      commit('setJobs', res.data)
    },
    async axiosGetDepts({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/departments")
      commit('setDepts', res.data)
    },
    async axiosGetScenes({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/scenes")
      commit('setScene', res.data)
    },
    async axiosGetContents({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/contents")
      commit('setContents', res.data)
    },
    async axiosGetDetails({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/details")
      commit('setDetails', res.data)
    },
    async axiosGetMistakes({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/mistakes")
      commit('setMistakes', res.data)
    },
    async axiosGetDests({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/dests")
      commit('setDests', res.data)
    },
    async axiosPostRegistration({commit}, {name, email, password, job, department, isChief}) {
      try {
        const res = await axios.post("http://localhost:3000/user/registration", {name, email, password, job, department, isChief})
        commit('setResult', res.data)
      } catch (error) {
        console.log(`error = ${error}`);
        // console.log(`error = ${JSON.stringify(error.response.data)}`);
        commit('setError', error)
      }
    }
  },
  modules: {
  }
})
