import Vue from 'vue'
import './plugins/axios'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import axios from 'axios'

Vue.config.productionTip = false

const token = localStorage.getItem('accessToken')
if (token) {
  console.log('accessToken exists');
  (async() => {
    try {
      console.log(token)
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
      const res = await axios.get("http://localhost:3000/user")
      store.dispatch('actionSetUserInfo', res.data)
      console.log('####main.js##')
      console.log(`res.data = ${res.data}`)
    } catch (error) {
      console.log(error.response.data)
    }
  })();
}
// if (token) {
//   axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
//   const user = jwt_decode(token)
//   store.dispatch('actionSetUserInfo', user)
//   console.log(`main.js user= ${user}`)
//   console.dir(user)
// }

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
