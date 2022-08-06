import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'HomeView',
    component: HomeView
  },
  {
    path: '/SignUp',
    name: 'SignUp',
    component: () => import(/* webpackChunkName: "SignUp" */ '../views/SignUp.vue')
  },
  {
    path: '/SignIn',
    name: 'SignIn',
    component: () => import(/* webpackChunkName: "SignIn" */ '../views/SignIn.vue')
  },
  // {
  //   path: '/Dashboard',
  //   name: 'Dashboard',
  //   component: () => import(/* webpackChunkName: "Dashboard" */ '../views/Dashboard.vue')
  // }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
