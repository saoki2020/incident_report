import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

// デフォルトURLを設定(開発ならlocalhost,本番ならドメイン名)
axios.defaults.baseURL = process.env.VUE_APP_ROOT_API

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
    itemCount: '',
    chartData: '',
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
    getReport: state => state.report,
    getItemCount: state => state.itemCount,
    getChartData: state => state.chartData,
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
    setItemCount: (state, value) => state.itemCount = value,
    setChartData: (state, value) => state.chartData = value,
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
    // マスターデータの取得
    async axiosGetJobs({commit}) {
      const res =  await axios.get("/masters/jobs")
      commit('setJobs', res.data)
    },
    async axiosGetDepts({commit}) {
      const res =  await axios.get("/masters/departments")
      commit('setDepts', res.data)
    },
    async axiosGetScenes({commit}) {
      const res =  await axios.get("/masters/scenes")
      commit('setScenes', res.data)
    },
    async axiosGetContents({commit}) {
      const res =  await axios.get("/masters/contents")
      commit('setContents', res.data)
    },
    async axiosGetDetails({commit}) {
      const res =  await axios.get("/masters/details")
      commit('setDetails', res.data)
    },
    async axiosGetMistakes({commit}) {
      const res =  await axios.get("/masters/mistakes")
      commit('setMistakes', res.data)
    },
    async axiosGetDests({commit}) {
      const res =  await axios.get("/masters/dests")
      commit('setDests', res.data)
    },
    async axiosGetClinicalDepts({commit}) {
      const res =  await axios.get("/masters/clinicalDepts")
      commit('setClinicalDepts', res.data)
    },
    // 新規登録
    async axiosPostRegistration({commit}, {name, email, password, job, department, isChief}) {
      try {
        const res = await axios.post("/user/registration", {name, email, password, job, department, isChief})
        commit('setResult', res.data)
        commit('setPostStatus', 'REGISTRATION SUCCESS')
      } catch (error) {
        if (!error.response) {
          // レスポンスが無い場合
          commit('setError', 'レスポンスがありません')
        } else if (error.response.data.errors) {
          // バリデーションエラーの場合
          commit('setError', error.response.data.errors)
        } else {
        // SQLのエラーの場合
          commit('setError', error.response.data)
        }
        commit('setPostStatus', 'ERROR')
      }
    },
    // トークンを使って認証
    async axiosAuthentication({commit}, {email, password}) {
      try {
        const res = await axios.post("/user/authentication", {email, password})
        const token = res.data
        // tokenをvuexとlocalStrageに保存
        commit('setToken', token)
        commit('setLocalStorageToken', token)
        // tokenをヘッダーにセット
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
        // ユーザー情報を取得
        const resUser = await axios.get("/user")
        commit('setUserInfo', resUser.data);
      } catch (error) {
        // ERR_EMPTY_RESPONSEの場合はerror.responseが無いので文字だけ表示
        if(!error.response){
          commit('setError', 'レスポンスがありません')
        } else {
          commit('setError', error.response.data)
        }
        commit('setPostStatus', 'ERROR')
        throw error
      }
    },
    // サインアウト
    actionSignOut({commit}) {
      commit('clearAuth')
    },
    // ユーザー情報の取得
    actionSetUserInfo({commit}, payload) {
      commit('setUserInfo', payload)
    },
    // レポートの登録
    async axiosPostReport({commit, getters}, postData) {
      const postUser = getters.getUserInfo
      try {
        await axios.post("/report/postNewReport",{ postData, postUser})
        commit('setPostStatus', 'REPORT SUCCESS')
      } catch (error) {
        if(!error.response){
          commit('setError', 'レスポンスがありません')
        } else {
          commit('setError', error.response.data)
        }
        commit('setPostStatus', 'ERROR')
      }
    },
    // 役職者用レポート一覧の取得
    async axiosGetReportForChief({commit}) {
      try {
        const res = await axios.get('/report/chief')
        commit('setReport', res.data)
      } catch (error) {
        commit('setError', error.response.data)
      }
    },
    // コメント済みレポート一覧の取得
    async axiosGetCommentedReport({commit}) {
      try {
        const res = await axios.get('/report/commented')
        commit('setReport', res.data)
      } catch (error) {
        commit('setError', error.response.data)
      }
    },
    // レポートの取得（コメント済み＆ログインユーザーのモノ）
    async axiosGetReport({commit, getters}) {
      try {
        const res = await axios.get('/report', {params: {userId: getters.getUserInfo.user_id}})
        commit('setReport', res.data)
      } catch (error) {
        commit('setError', error.response.data)
      }
    },
    // コメントの登録
    async axiosPostComment({commit}, commentData) {
      try {
        await axios.post("/report/postComment", {commentData})
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // レポートの削除
    async axiosDeleteReport({commit}, reportNo) {
      try {
        await axios.post("/report/delete", {reportNo})
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // レポートの編集
    async axiosEditReport({commit}, editData) {
      try {
        await axios.post("/report/edit", {editData})
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 毎月の総件数を取得
    async axiosCountReport({commit}, year) {
      try {
        const res = await axios.get("/report/countReport", {params: {selectedYear: year}})
        commit('setChartData', Object.values(res.data[0]))
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 発生場所ごとの毎月の件数を取得
    async axiosCountScene({commit}, year) {
      try {
        const res = await axios.get("/report/countScene", {params: {selectedYear: year}})
        commit('setItemCount', res.data)
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 内容ごとの毎月の件数を取得
    async axiosCountContent({commit}, year) {
      try {
        const res = await axios.get("/report/countContent", {params: {selectedYear: year}})
        commit('setItemCount', res.data)
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 詳細ごとの毎月の件数を取得
    async axiosCountDetail({commit}, year) {
      try {
        const res = await axios.get("/report/countDetail", {params: {selectedYear: year}})
        commit('setItemCount', res.data)
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 誤内容ごとの毎月の件数を取得
    async axiosCountMistake({commit}, year) {
      try {
        const res = await axios.get("/report/countMistake", {params: {selectedYear: year}})
        commit('setItemCount', res.data)
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
    // 部署ごとの毎月の件数を取得
    async axiosCountDept({commit}, year) {
      try {
        const res = await axios.get("/report/countDept", {params: {selectedYear: year}})
        commit('setItemCount', res.data)
      } catch (error) {
        commit('setError', error.response.data)
        throw error
      }
    },
  },
  modules: {
  }
})
