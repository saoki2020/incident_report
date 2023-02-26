<template>
  <v-app>
    <v-container>
      <v-row class="mt-6" justify="center">
        <v-card>
          <v-card-title>
            <h2>ログイン</h2>
          </v-card-title>
          <v-card-text>
            <v-form ref="formValid">
              <v-text-field
                prepend-icon="mdi-account-circle"
                label="メールアドレス"
                v-model="email"
                :rules="[validRule.required,validRule.email]"
              />
              <v-text-field
                v-bind:type="showPass ? 'text' : 'password'"
                prepend-icon="mdi-lock"
                v-bind:append-icon="showPass ? 'mdi-eye' : 'mdi-eye-off' "
                @click:append="showPass = !showPass"
                label="パスワード"
                v-model="password"
                :rules="[validRule.required,validRule.minlength]"
              />
              <v-card-actions>
                <v-btn class="teal lighten-2" dark @click="onSignIn">ログイン</v-btn>
              </v-card-actions>
            </v-form>
          </v-card-text>
        </v-card>
      </v-row>
      <v-row class="mt-6" justify="center">
        <p><router-link :to="{name:'SignUp'}">新規登録</router-link>はこちらから</p>
      </v-row>
    </v-container>
    <MessageWindow v-if="getMessageWindowStatus" />
  </v-app>
</template>

<script>
import MessageWindow from '../components/MessageWindow.vue'
import { mapActions,mapGetters } from 'vuex'

export default {
  name: "SignIn",
  components: {
    MessageWindow,
  },
  data: () => ({
    showPass : false,
    email: '',
    password: '',
    validRule: {
      required: v => !!v || "必須項目です",
      email: v => /.+@.+\..+/.test(v) || "メールアドレスを入力してください",
      minlength: v => (v && v.length >=7) || "パスワードは7文字以上です"
    },
  }),
  computed: {
    ...mapGetters(['getMessageWindowStatus','getUserInfo']),
  },
  methods: {
    ...mapActions(['axiosAuthentication','toggleMessageWindow']),
    async onSignIn() {
      try {
        await this.axiosAuthentication({
          email: this.email,
          password: this.password
        })
        if (this.getUserInfo.isChief===1) {
          this.$router.push('/ChiefPage')
        } else {
          this.$router.push('/ReportList')
        }
      } catch (error) {
        this.toggleMessageWindow(true)
      }
    },
  },
}
</script>
