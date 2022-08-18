<template>
  <v-app>
    <v-app-bar color="teal" dark app>
      <v-toolbar-title>インシデントレポート</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items>
        <v-btn text to="/PostReport">報告</v-btn>
        <v-btn text to="/ReportList">一覧</v-btn>
        <v-btn text to="/Statistics">統計</v-btn>
        <v-btn outlined to="/SignIn">ログイン</v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-main>
      <v-container v-if="getUserInfo">
        <v-row class="ma-1" justify="end">
          <p class="mx-2">ユーザー名：{{getUserInfo.name}} </p>
          <v-btn x-small outlined color="teal" @click="onSignOut">ログアウト</v-btn>
        </v-row>
      </v-container>
      <router-view/>
    </v-main>
  </v-app>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: 'App',
  data: () => ({
  }),
    computed: {
    ...mapGetters(['getUserInfo'])
  },
  methods: {
    ...mapActions(['actionSignOut']),
    onSignOut() {
      this.actionSignOut()
      this.$router.push('/SignIn', () =>{})
    }
  }
};
</script>
