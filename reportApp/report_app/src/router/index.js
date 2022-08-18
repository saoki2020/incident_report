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
    path: '/Result',
    name: 'Result',
    component: () => import(/* webpackChunkName: "Result" */ '../views/Result.vue')
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
    // meta: {requiresAuth: true}
  },
  {
    path: '/Statistics',
    name: 'Statistics',
    component: () => import(/* webpackChunkName: "Statistics" */ '../views/Statistics.vue'),
    meta: {requiresAuth: true}
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

// axios.getでユーザー情報が取ってこれれば遷移できる
// router.beforeEach(async (to, from, next) => {
//   if (to.meta.requiresAuth) {
//     try {
//       await axios.get('http://localhost:3000/user');
//       next();
//     } catch (error) {
//       next('login');
//     }
//   } else {
//     next();
//   }
// });

export default router
