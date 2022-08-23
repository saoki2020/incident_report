<template>
<!-- 報告者情報 -->
  <v-card>
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
            v-model="syncYear"
            suffix="年"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="職歴[月]"
            v-model="syncMonth"
            suffix="ヶ月"
            />
          </v-col>
        </v-row>
      </v-form>
    </v-card-text>
  </v-card>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "ReportForm1",
  props: [
    "year",
    "month",
  ],
  data() {
    return {
    }
  },
  computed: {
    ...mapGetters(['getUserInfo', 'getJobs', 'getDepts']),
    syncYear: {
      get() {
        return this.year
      },
      set(val) {
        this.$emit('update:year', val)
      }
    },
    syncMonth: {
      get() {
        return this.month
      },
      set(val) {
        this.$emit('update:month', val)
      }
    },

  },
  methods: {
    ...mapActions(['axiosGetJobs','axiosGetDepts']),

  },
  created() {
    this.axiosGetJobs()
    this.axiosGetDepts()
  }
}
</script>
