<template>
  <v-app>
    <v-app-bar color="teal" dark app>
      <v-toolbar-title>インシデントレポート</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items>
        <v-btn text to="/PostReport">報告</v-btn>
        <v-btn text to="/ReportList">一覧</v-btn>
        <v-btn text to="/Statistics">統計</v-btn>
        <v-btn text to="/ChiefPage">役職者専用</v-btn>
        <v-btn outlined to="/SignIn">ログイン</v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-main>
      <v-row v-if="getUserInfo" no-gutters>
        <v-spacer></v-spacer>
        <v-col cols="3" class="px-2" align="right">
          <div>ユーザー名：{{getUserInfo.name}}</div>
          <div>権限：{{authority()}}</div>
        </v-col>
        <v-col cols="1" class="d-flex align-center">
          <v-btn x-small outlined color="teal" @click="onSignOut">ログアウト</v-btn>
        </v-col>
      </v-row>
      <router-view />
    </v-main>
  </v-app>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'

export default {
  name: 'App',
  computed: {
    ...mapGetters(['getUserInfo']),
  },
  methods: {
    ...mapActions(['actionSignOut']),
    onSignOut() {
      this.actionSignOut()
      this.$router.push('/SignIn', () =>{})
    },
    authority() {
      if(this.getUserInfo.isChief===0)
        return "一般"
      else
        return "役職者"
    }
  }
};
</script>
