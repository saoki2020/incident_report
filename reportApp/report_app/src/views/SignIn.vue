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
                v-model="input_email"
              />
              <v-text-field
                v-bind:type="showPass ? 'text' : 'password'"
                prepend-icon="mdi-lock"
                v-bind:append-icon="showPass ? 'mdi-eye' : 'mdi-eye-off' "
                @click:append="showPass = !showPass"
                label="パスワード"
                v-model="input_password"
              />
              <v-card-actions>
                <v-btn class="teal lighten-2" dark>ログイン</v-btn>
              </v-card-actions>
            </v-form>
          </v-card-text>
        </v-card>
      </v-row>
      <v-row class="mt-6" justify="center">
        <p><router-link :to="{name:'SignUp'}">新規登録</router-link>はこちらから</p>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
export default {
  name: "SignIn",
  data: () => ({
    showPass : false,
    input_email: '',
    input_password: ''
  })
}
</script>

<style scoped>

</style>
