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
    clinicalDepts: [],
    postResult: [],
    postError: [],
    messageWindowStatus: false,
    deleteWindowStatus: false,
    editWindowStatus: false,
    postStatus: '',
    userId: '',
    token: '',
    userInfo: '',
    report: [],
  },
  getters: {
    getJobs: state => state.jobs,
    getDepts: state => state.depts,
    getScenes: state =>  state.scenes,
    getContents: state => state.contents,
    getDetails: state => state.details,
    getMistakes: state => state.mistakes,
    getDests: state => state.dests,
    getClinicalDepts: state => state.clinicalDepts,
    getResult: state => state.postResult,
    getError: state => state.postError,
    getMessageWindowStatus: state => state.messageWindowStatus,
    getDeleteWindowStatus: state => state.deleteWindowStatus,
    getEditWindowStatus: state => state.editWindowStatus,
    getPostStatus: state => state.postStatus,
    getUserId: state => state.userId,
    getToken: state => state.token,
    getUserInfo: state => state.userInfo,
    getReport: state => state.report
  },
  mutations: {
    setJobs: (state, value) => state.jobs = value,
    setDepts: (state, value) => state.depts = value,
    setScenes: (state, value) => state.scenes = value,
    setContents: (state, value) => state.contents = value,
    setDetails: (state, value) => state.details = value,
    setMistakes: (state, value) => state.mistakes = value,
    setDests: (state, value) => state.dests = value,
    setClinicalDepts: (state, value) => state.clinicalDepts = value,
    setResult: (state, value) => state.postResult = value,
    setError: (state, value) => state.postError = value,
    setMessageWindowStatus: (state, value) => state.messageWindowStatus = value,
    setDeleteWindowStatus: (state, value) => state.deleteWindowStatus = value,
    setEditWindowStatus: (state, value) => state.editWindowStatus = value,
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
    setReport: (state, value) => state.report = value,
  },
  actions: {
    // モーダルウインドウの操作
    toggleMessageWindow({commit}, payload) {
      commit('setMessageWindowStatus', payload)
    },
    toggleDeleteWindow({commit}, payload) {
      commit('setDeleteWindowStatus', payload)
    },
    toggleEditWindow({commit}, payload) {
      commit('setEditWindowStatus', payload)
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
      commit('setScenes', res.data)
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
    async axiosGetClinicalDepts({commit}) {
      const res =  await axios.get("http://localhost:3000/masters/clinicalDepts")
      commit('setClinicalDepts', res.data)
    },
    async axiosPostRegistration({commit}, {name, email, password, job, department, isChief}) {
      try {
        const res = await axios.post("http://localhost:3000/user/registration", {name, email, password, job, department, isChief})
        commit('setResult', res.data)
        commit('setPostStatus', 'REGISTRATION SUCCESS')
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
    async axiosPostReport({commit, getters}, postData) {
      // console.log("post report")
      // console.log(postData)
      const postUser = getters.getUserInfo
      // console.log(`postUser = ${postUser}`)
      // console.dir(postUser)
      try {
        const res = await axios.post("http://localhost:3000/report/postNewReport",{ postData, postUser})
        commit('setPostStatus', 'REPORT SUCCESS')
      } catch (error) {
        console.log("axiosPostReport Error")
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
      }
    },
    async axiosGetReportForChief({commit}) {
      try {
        console.log('axiosGetReportForChief working')
        const res = await axios.get('http://localhost:3000/report/chief')
        commit('setReport', res.data)
      } catch (error) {
        console.log('axiosGetReport Error')
        console.dir(error.response.data)
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
      }
    },
    async axiosGetCommentedReport({commit}) {
      try {
        console.log('axiosGetCommented working')
        const res = await axios.get('http://localhost:3000/report/commented')
        commit('setReport', res.data)
      } catch (error) {
        console.log('axiosGetCommentedReport Error')
        console.dir(error.response.data)
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
      }
    },
    async axiosGetReport({commit, getters}) {
      try {
        console.log('axiosGetReport with ID working')
        const res = await axios.get('http://localhost:3000/report', {params: {userId: getters.getUserInfo.user_id}})
        commit('setReport', res.data)
      } catch (error) {
        console.log('axiosGetReport Error')
        console.dir(error.response.data)
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
      }
    },
    async axiosPostComment({commit}, commentData) {
      try {
        console.log(`axiosPostComment postData.reportNo = ${commentData.reportNo}}`)
        console.log(`axiosPostComment postData.comment = ${commentData.comment}}`)
        const res = await axios.post("http://localhost:3000/report/postComment", {commentData})
        commit('setPostStatus', 'REPORT SUCCESS')
      } catch (error) {
        console.log("axiosPostComment Error")
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
        throw error
      }
    },
    async axiosDeleteReport({commit}, reportNo) {
      try {
        const res = await axios.post("http://localhost:3000/report/delete", {reportNo})
        commit('setPostStatus', 'REPORT SUCCESS')
      } catch (error) {
        console.log("axiosDeleteReport Error")
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
        throw error
      }
    },
    async axiosEditReport({commit}, editData) {
      try {
        console.log('axiosEditReport working')
        console.log(`editData.itemName = ${editData.itemName}`)
        console.log(`editData.itemValue= ${editData.itemValue}`)
        const res = await axios.post("http://localhost:3000/report/edit", {editData})
        commit('setPostStatus', 'REPORT SUCCESS')
      } catch (error) {
        console.log("axiosEditReport Error")
        commit('setError', error.response.data)
        commit('setPostStatus', 'ERROR')
        throw error
      }
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
