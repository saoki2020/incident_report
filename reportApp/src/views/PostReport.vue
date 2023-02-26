<template>
  <v-app>
    <v-container>
      <v-row class="ma-6" justify="center">
        <h1>インシデントを報告する</h1>
      </v-row>
      <v-row justify="center">
        <v-col cols="8">
        <!-- コンポーネントを表示する -->
          <ReportForm1 v-if="formNum===1"
            :year.sync="post.workYear"
            :month.sync="post.workMonth"
            :formNum.sync="formNum"
            />
          <ReportForm2 v-if="formNum===2"
            :name.sync="post.patientName"
            :age.sync="post.patientAge"
            :gender.sync="post.patientGender"
            :department.sync="post.department"
            :disease.sync="post.disease"
            :date.sync="post.hospitalDate"
            :doctor.sync="post.doctor"
            :formNum.sync="formNum"
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
            :formNum.sync="formNum"
          />
          <ReportForm4 v-if="formNum===4"
            :situation.sync="post.incidentSituation"
            :response.sync="post.incidentResponse"
            :factor.sync="post.incidentFactor"
            :prevention.sync="post.incidentPrevention"
            :formNum.sync="formNum"
          />
          <ReportConfirm v-if="formNum===5"
            :postData="post"
            :formNum.sync="formNum"
          />
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
