<template>
  <v-app>
    <v-container>
      <v-row class="mt-6" justify="center">
        <v-card>
          <v-card-title>
            <h2>ログイン</h2>
          </v-card-title>
          <v-card-text>
            <v-form>
              <v-text-field
                prepend-icon="mdi-account-circle"
                label="メールアドレス"
                v-model="email"
              />
              <v-text-field
                v-bind:type="showPass ? 'text' : 'password'"
                prepend-icon="mdi-lock"
                v-bind:append-icon="showPass ? 'mdi-eye' : 'mdi-eye-off' "
                @click:append="showPass = !showPass"
                label="パスワード"
                v-model="password"
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
    password: ''
  }),
  computed: {
    ...mapGetters(['getMessageWindowStatus']),
  },
  methods: {
    ...mapActions(['axiosAuthentication','toggleMessageWindow']),
    async onSignIn() {
      try {
        await this.axiosAuthentication({
          email: this.email,
          password: this.password
        })
        this.$router.push('/ReportList')
      } catch (error) {
        console.log('error on Signin')
        console.log(error)
        this.toggleMessageWindow(true)
      }
    },
  },
}
</script>

<style scoped>

</style>
