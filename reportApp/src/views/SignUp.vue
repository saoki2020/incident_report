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
                :rules="[validRule.required]"
              />
              <v-text-field
                label="メールアドレス"
                v-model="email"
                :rules="[validRule.required,validRule.email]"
              />
              <v-text-field
                label="パスワード"
                v-model="password"
                :rules="[validRule.required,validRule.minlength]"
              />
              <v-select
                label="職業"
                v-model="job"
                :items="getJobs"
                item-text="job_name"
                item-value="job_id"
                :rules="[validRule.required]"
              />
              <v-select
                label="所属"
                v-model="department"
                :items="getDepts"
                item-text="dept_name"
                item-value="dept_id"
                :rules="[validRule.required]"
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
    <MessageWindow v-if="getMessageWindowStatus" v-bind:myEmail="email" />
  </v-app>
</template>

<script>
import MessageWindow from '../components/MessageWindow.vue'
import { mapGetters, mapActions } from 'vuex'

export default {
  name: "SignUp",
  components: {
    MessageWindow,
  },
  data: () => ({
    showPass: false,
    name: '',
    email: '',
    password: '',
    job: '',
    department: '',
    isChief: false,
    validRule: {
      required: v => !!v || "必須項目です",
      email: v => /.+@.+\\..+/.test(v) || "メールアドレスを入力してください",
      minlength: v => (v && v.length >=7) || "パスワードは7文字以上です"
    },
  }),
  computed: {
    ...mapGetters(['getJobs','getDepts', 'getMessageWindowStatus']),
  },
  methods: {
    ...mapActions(['axiosGetJobs','axiosGetDepts','axiosPostRegistration','toggleMessageWindow','actionSetError']),
    async onSubmit() {
      await this.axiosPostRegistration({
        name: this.name,
        email: this.email,
        password: this.password,
        job: this.job,
        department: this.department,
        isChief: this.isChief,
      })
      this.toggleMessageWindow(true)
    },
  },
  created() {
    this.axiosGetJobs()
    this.axiosGetDepts()
  }
}
</script>
