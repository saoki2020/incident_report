import Vue from 'vue'
import './plugins/axios'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import axios from 'axios'

Vue.use(require('vue-moment'))

Vue.config.productionTip = false

const token = localStorage.getItem('accessToken')
if (token) {
  (async() => {
    try {
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
      const res = await axios.get("http://localhost:3000/user")
      store.dispatch('actionSetUserInfo', res.data)
    } catch (error) {
      console.log(error)
    }
  })();
}

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
