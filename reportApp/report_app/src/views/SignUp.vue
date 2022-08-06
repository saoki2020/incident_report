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
                v-model="input_name"
              />
              <v-text-field
                label="メールアドレス"
                v-model="input_email"
              />
              <v-text-field
                label="パスワード"
                v-model="input_password"
              />
              <v-select
                :items="jobs"
                label="職業"
                v-model="selected_job"
              />
              <v-select
                :items="departments"
                label="所属"
                v-model="selected_department"
              />
              <v-checkbox v-model="isCheif">
                <template v-slot:label>
                  <div>
                    役職者
                  </div>
                </template>
              </v-checkbox>
              <v-card-actions>
                <v-btn class="teal lighten-2" dark>新規登録</v-btn>
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
export default {
  name: "SignUp",
  data: () => ({
    showPass : false,
    input_email: '',
    input_password: '',
    selected_job: '',
    selected_department: '',
    isCheief: false,
    jobs: ['医師','看護師'],
    departments: ['臨床工学科','放射線科'],
  })
}
</script>

<style scoped>

</style>
