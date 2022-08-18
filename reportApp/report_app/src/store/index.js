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
    postError: [],
    messageWindowStatus: false,
    postStatus: '',
    userId: '',
    token: '',
    userInfo: '',
  },
  getters: {
    getJobs: state => state.jobs,
    getDepts: state => state.depts,
    getScene: state =>  state.scenes,
    getContents: state => state.contents,
    getDetails: state => state.details,
    getMistakes: state => state.mistakes,
    getDests: state => state.dests,
    getResult: state => state.postResult,
    getError: state => state.postError,
    getMessageWindowStatus: state => state.messageWindowStatus,
    getPostStatus: state => state.postStatus,
    getUserId: state => state.userId,
    getToken: state => state.token,
    getUserInfo: state => state.userInfo,
  },
  mutations: {
    setJobs: (state, value) => state.jobs = value,
    setDepts: (state, value) => state.depts = value,
    setScenes: (state, value) => state.scenes = value,
    setContents: (state, value) => state.contents = value,
    setDetails: (state, value) => state.details = value,
    setMistakes: (state, value) => state.mistakes = value,
    setDests: (state, value) => state.dests = value,
    setResult: (state, value) => state.postResult = value,
    setError: (state, value) => state.postError = value,
    setMessageWindowStatus: (state, value) => state.messageWindowStatus = value,
    setPostStatus: (state, value) => state.postStatus = value,
    setUserId: (state, value) => state.userId = value,
    setToken: (state, value) => state.token = value,
    setUserInfo: (state, value) => state.userInfo = value,
    setLocalStorageToken: (state, value) => localStorage.setItem('accessToken', value),
    clearAuth: (state) => {
      axios.defaults.headers.common['Authorization'] = null
      state.userInfo = null
      localStorage.removeItem('accessToken')
    },
  },
  actions: {
    // モーダルウインドウの操作
    toggleMessageWindow({commit}, payload) {
      commit('setMessageWindowStatus', payload)
    },
    // APIの操作
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
        commit('setPostStatus', 'SUCCESS')
      } catch (error) {
        const errorData = error.response.data
        // バリデーションエラーの場合
        if (errorData.errors) {
          commit('setError', errorData.errors)
          console.log(errorData.errors)
        } else {
        // SQLのエラーの場合
          commit('setError', errorData)
          console.log(errorData);
        }
        commit('setPostStatus', 'ERROR')
        // console.log(`error.response.data = ${errors}`)
        // Object.keys(errors).forEach(
        //   key =>  console.log(`${key}:${errors[key]}`));
      }
    },
    async axiosAuthentication({commit}, {email, password}) {
      try {
        const res = await axios.post("http://localhost:3000/user/authentication", {email, password})
        const token = res.data
        console.log(`res.data = ${token}`)
        commit('setToken', token)
        commit('setLocalStorageToken', token)
        // tokenをヘッダーにセットする
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
        // ユーザー情報を取得
        const resUser = await axios.get("http://localhost:3000/user")
        console.log(`resUser.data = ${resUser.data}`)
        console.dir(resUser.data)
        commit('setUserInfo', resUser.data);
      } catch (error) {
        console.log('error on axiosAuthentication')
        console.log(error.response.data)
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
      }
    },
    actionSignOut({commit}) {
      commit('clearAuth')
    },
    actionSetUserInfo({commit}, payload) {
      commit('setUserInfo', payload)
    },
    // Promiseを使うバージョン
    // async axiosAuthentication({commit}, {email, password}) {
    //   await new Promise((resolve, reject) => {
    //     axios.post("http://localhost:3000/user/authentication", {email, password})
    //     .then(response => {
    //       const token = response.data
    //       commit('setToken', token)
    //       // tokenをヘッダーにセットする
    //       axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    //       axios.get("http://localhost:3000/user")
    //       .then(res => {

    //       })
    //       commit('setUser', response.data);
    //       resolve(response)
    //     }).catch(error => {
    //       console.log('error on axiosAuthentication')
    //       console.log(error.response.data)
    //       commit('setError', error.response.data)
    //       commit('setPostStatus', 'ERROR')
    //       reject(error)
    //     })
    //   })
    // },
  },
  modules: {
  }
})
