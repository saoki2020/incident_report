import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import store from '@/store/index'

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
  {
    path: '/ReportList',
    name: 'ReportList',
    component: () => import(/* webpackChunkName: "ReportList" */ '../views/ReportList.vue'),
    meta: {requiresAuth: true}
  },
  {
    path: '/PostReport',
    name: 'PostReport',
    component: () => import(/* webpackChunkName: "PostReport" */ '../views/PostReport.vue'),
    meta: {requiresAuth: true}
  },
  {
    path: '/Statistics',
    name: 'Statistics',
    component: () => import(/* webpackChunkName: "Statistics" */ '../views/Statistics.vue'),
    meta: {requiresAuth: true}
  },
  {
    path: '/ChiefPage',
    name: 'ChiefPage',
    component: () => import(/* webpackChunkName: "ChiefPage" */ '../views/ChiefPage.vue'),
    meta: {requiresAuthChief: true}
  },
  {
    path: '/ChiefCommented',
    name: 'ChiefCommented',
    component: () => import(/* webpackChunkName: "ChiefCommented" */ '../views/ChiefCommented.vue'),
    meta: {requiresAuthChief: true}
  },
  {
    path: '/ErrorPage',
    name: 'ErrorPage',
    props: true,
    component: () => import(/* webpackChunkName: "ErrorPage" */ '../views/ErrorPage.vue'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// storeにuser情報があれば遷移できる
router.beforeEach(async (to, from, next) => {
  if (to.meta.requiresAuth) {
    if (!store.getters.getUserInfo) {
      next('/SignIn');
    } else {
      next();
    }
  } else {
    next();
  }
});

// 役職者だけがアクセスできる
router.beforeEach(async (to, from, next) => {
  if (to.meta.requiresAuthChief) {
    if (!store.getters.getUserInfo) {
      next('/SignIn')
    } else if (store.getters.getUserInfo.isChief!=1){
      next('/ErrorPage')
    } else {
      next()
    }
  } else {
    next();
  }
});

export default router
