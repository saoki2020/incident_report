<template>
  <v-app>
    <v-container>
      <v-row class="mt-6" justify="center">
        <v-card>
          <v-card-title>
            <h2>新規登録</h2>
          </v-card-title>
          <v-card-text>
            <v-form>
              <v-text-field
                label="氏名"
                v-model="name"
              />
              <v-text-field
                label="メールアドレス"
                v-model="email"
              />
              <v-text-field
                label="パスワード"
                v-model="password"
              />
              <v-select
                label="職業"
                v-model="job"
                :items="getJobs"
                item-text="job_name"
                item-value="job_id"
              />
              <v-select
                label="所属"
                v-model="department"
                :items="getDepts"
                item-text="dept_name"
                item-value="dept_id"
              />
              <v-checkbox v-model="isChief" :label="`役職者`" />
              <v-card-actions>
                <v-btn class="teal lighten-2" dark @click="onSubmit">新規登録</v-btn>
              </v-card-actions>
            </v-form>
          </v-card-text>
        </v-card>
      </v-row>
      <v-row class="mt-6" justify="center">
        <p><router-link :to="{name:'SignIn'}">ログイン</router-link>はこちらから</p>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'

export default {
  name: "SignUp",
  data: () => ({
    showPass: false,
    name: '',
    email: '',
    password: '',
    job: '',
    department: '',
    isChief: false,
  }),
  computed: {
    ...mapGetters(['getJobs','getDepts']),
  },
  methods: {
    ...mapActions(['axiosGetJobs','axiosGetDepts','axiosPostRegistration']),
    onSubmit() {
      this.axiosPostRegistration({
        name: this.name,
        email: this.email,
        password: this.password,
        job: this.job,
        department: this.department,
        isChief: this.isChief,
      })
      this.$router.push('/Result')

    },
  },
  created() {
    this.axiosGetJobs()
    this.axiosGetDepts()
  }
}
</script>

<style scoped>

</style>
