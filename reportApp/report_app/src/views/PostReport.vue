<template>
  <v-app>
    <v-container>
      <v-row class="ma-6" justify="center">
        <h1>インシデントを報告する</h1>
      </v-row>
      <v-row justify="center">
        <v-col cols="8">
        <!-- コンポーネントを表示する -->
        <!-- <keep-alive> -->
          <ReportForm1 v-if="formNum===1"
            :year.sync="post.workYear"
            :month.sync="post.workMonth"
            :rules="[rules.required]"
            :ref="form1Valid"
            />
          <ReportForm2 v-if="formNum===2"
            :name.sync="post.patientName"
            :age.sync="post.patientAge"
            :gender.sync="post.patientGender"
            :department.sync="post.department"
            :disease.sync="post.disease"
            :date.sync="post.hospitalDate"
            :doctor.sync="post.doctor"
          />
          <ReportForm3 v-if="formNum===3"
            :iDate.sync="post.incidentDate"
            :iTime.sync="post.incidentTime"
            :scene.sync="post.selectedScene"
            :content.sync="post.selectedContent"
            :detail.sync="post.selectedDetail"
            :mistake.sync="post.selectedMistake"
            :risk.sync="post.selectedRisk"
            :trust.sync="post.loseTrust"
            :dest.sync="post.selectedDest"
            :rDate.sync="post.reportDate"
            :rTime.sync="post.reportTime"
          />
          <ReportForm4 v-if="formNum===4"
            :situation.sync="post.incidentSituation"
            :response.sync="post.incidentResponse"
            :factor.sync="post.incidentFactor"
            :prevention.sync="post.incidentPrevention"
          />
          <ReportConfirm v-if="formNum===5"
            :postData="post"
          />
        <!-- </keep-alive> -->
        </v-col>
      </v-row>
      <v-row justify="center">
        <v-col cols="1">
          <v-btn v-if="1<formNum&&formNum<=5" color="teal" outlined @click="decreaseForm">戻る</v-btn>
        </v-col>
        <v-col cols="1">
          <v-btn  v-if="formNum<4" class="teal lighten-2" dark @click="increaseForm">次へ</v-btn>
        </v-col>
        <v-col cols="1">
          <v-btn  v-if="formNum===4" class="teal lighten-2" dark @click="increaseForm">提出する</v-btn>
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>


<script>
import ReportForm1 from './forms/ReportForm1.vue'
import ReportForm2 from './forms/ReportForm2.vue'
import ReportForm3 from './forms/ReportForm3.vue'
import ReportForm4 from './forms/ReportForm4.vue'
import ReportConfirm from './forms/ReportConfirm.vue'

import { mapActions, mapGetters } from 'vuex'
export default {
  name: "PostReport",
  components: {
    ReportForm1,
    ReportForm2,
    ReportForm3,
    ReportForm4,
    ReportConfirm
  },
  data() {
    return {
      formNum: 1,
      post: {
        workYear: '',
        workMonth: '',
        patientName: '',
        patientAge: '',
        patientGender: '',
        department: '',
        disease: '',
        hospitalDate: '',
        doctor:'',
        incidentDate:'',
        incidentTime:'',
        selectedScene:'',
        selectedContent:'',
        selectedDetail:'',
        selectedMistake:'',
        selectedRisk:'',
        loseTrust:'',
        selectedDest: '',
        reportDate:'',
        reportTime:'',
        incidentSituation: '',
        incidentResponse: '',
        incidentFactor: '',
        incidentPrevention: ''
      },
    }
  },
  computed: {
  },
  methods: {
    increaseForm() {
      this.formNum++
      console.log(this.formNum)
    },
    decreaseForm() {
      this.formNum--
      console.log(this.formNum)
    },
  },
}
</script>

<style scoped>
  .text {
    white-space: pre-wrap;
  }
</style>
