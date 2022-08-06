<template>
  <v-app>
    <v-app-bar color="teal" dark app>
      <v-toolbar-title>インシデントレポート</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items>
        <v-btn text>報告</v-btn>
        <v-btn text>一覧</v-btn>
        <v-btn text>統計</v-btn>
        <v-btn outlined to="/SignIn">ログイン</v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-main>
      <router-view/>
    </v-main>
  </v-app>
</template>

<script>

export default {
  name: 'App',

  data: () => ({
    //
  }),
};
</script>
