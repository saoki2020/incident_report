<template>
  <v-app>
    <v-container>
      <v-row class="ma-6" justify="center">
        <h1>インシデントを報告する</h1>
      </v-row>
      <v-row justify="center">
        <v-col cols="8">
          <!-- 報告者情報 -->
          <v-card v-if="page==1">
            <v-card-title class="teal lighten-3">
              <span>報告者の情報を入力してください</span>
            </v-card-title>
            <v-card-text>
              <v-form>
                <v-row>
                  <v-col cols="12">
                    <v-text-field
                    label="氏名"
                    v-model="getUserInfo.name"
                    readonly
                    />
                  </v-col>
                  <v-col cols="12">
                    <v-text-field
                    v-if="getJobs.length"
                    label="職種"
                    v-model="getJobs[getUserInfo.job_id - 1].job_name"
                    readonly
                    />
                  </v-col>
                  <v-col cols="12">
                      <v-text-field
                      v-if="getDepts.length"
                      label="所属"
                      v-model="getDepts[getUserInfo.dept_id - 1].dept_name"
                      readonly
                      />
                  </v-col>
                  <v-col cols="6">
                    <v-text-field
                    label="職歴[年]"
                    v-model="post.workYear"
                    suffix="年"
                    />
                  </v-col>
                  <v-col cols="6">
                    <v-text-field
                    label="職歴[月]"
                    v-model="post.workMonth"
                    suffix="ヶ月"
                    />
                  </v-col>
                </v-row>
              </v-form>
            </v-card-text>
            <v-card-actions class="justify-center">
              <v-btn class="teal lighten-2" dark @click="nextForm">次へ</v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>


<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "PostReport",
  data() {
    return {
      page: 1,
      post: {
        workYear: '',
        workMonth: '',
      }
    }
  },
  computed: {
    ...mapGetters(['getUserInfo', 'getJobs', 'getDepts'])
  },
  methods: {
    ...mapActions(['axiosGetJobs','axiosGetDepts']),
    nextForm() {
      this.page++
    },
  },
  created() {
    this.axiosGetJobs()
    this.axiosGetDepts()
  }
}
</script>

<style scoped>
  .text {
    white-space: pre-wrap;
  }
</style>
