<template>
<!-- 確認 -->
<div>
  <v-card>
    <v-card-title class="teal lighten-3">
      以下の内容で報告します
    </v-card-title>
    <v-card-text>
      <div class="teal--text">-報告者-</div>
      <div class="black--text ml-5">氏名：{{getUserInfo.name}}</div>
      <div class="black--text ml-5">職種：{{getJobs[getUserInfo.job_id-1].job_name}}</div>
      <div class="black--text ml-5">所属：{{getDepts[getUserInfo.dept_id-1].dept_name}}</div>
      <div class="black--text ml-5">職歴：{{postData.workYear}}年{{postData.workMonth}}</div>
      <div class="teal--text">-患者情報-</div>
      <div class="black--text ml-5">患者名：{{postData.patientName}}</div>
      <div class="black--text ml-5">年齢：{{postData.patientAge}}</div>
      <div class="black--text ml-5">性別：{{postData.patientGender}}</div>
      <div class="black--text ml-5">診療科：{{getClinicalDepts[postData.department-1].clinical_dept_name}}</div>
      <div class="black--text ml-5">傷病名：{{postData.disease}}</div>
      <div class="black--text ml-5">入院日：{{postData.hospitalDate}}</div>
      <div class="black--text ml-5">主治医：{{postData.doctor}}</div>
      <div class="teal--text">-内容-</div>
      <div class="black--text ml-5">発生日：{{postData.incidentDate}}</div>
      <div class="black--text ml-5">発生時刻：{{postData.incidentTime}}</div>
      <div class="black--text ml-5">内容：{{getContents[postData.selectedContent-1].content}}</div>
      <div class="black--text ml-5">詳細：{{getDetails[postData.selectedDetail-1].detail}}</div>
      <div class="black--text ml-5">誤内容：{{getMistakes[postData.selectedMistake-1].mistake}}</div>
      <div class="black--text ml-5">生命への危険度：{{risks[postData.selectedRisk-1].riskLevel}}</div>
      <div class="black--text ml-5">患者への信頼：{{trusts[postData.loseTrust-1].loseTrust}}</div>
      <div class="black--text ml-5">報告先：{{getDests[postData.selectedDest-1].dest}}</div>
      <div class="black--text ml-5">報告日：{{postData.reportDate}}</div>
      <div class="black--text ml-5">報告時刻：{{postData.reportTime}}</div>
      <div class="teal--text">-発生時の状況-</div>
      <div class="black--text ml-5">{{postData.incidentSituation}}</div>
      <div class="teal--text">-その後の対応-</div>
      <div class="black--text ml-5">{{postData.incidentResponse}}</div>
      <div class="teal--text">-発生の要因-</div>
      <div class="black--text ml-5">{{postData.incidentFactor}}</div>
      <div class="teal--text">-防止策-</div>
      <div class="black--text ml-5">{{postData.incidentPrevention}}</div>
    </v-card-text>
    <v-card-actions class="justify-center">
      <v-row justify="center">
        <v-col cols="2">
          <v-btn v-if="1<formNum&&formNum<=5" color="teal" dark block outlined @click="decreaseForm">戻る</v-btn>
        </v-col>
        <v-col cols="2">
          <v-btn  v-if="formNum===5" class="teal lighten-2" dark @click="onSubmit">報告する</v-btn>
        </v-col>
      </v-row>
    </v-card-actions>
  </v-card>
  <MessageWindow v-if="getMessageWindowStatus" />
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import MessageWindow from '../../components/MessageWindow.vue'
export default {
  name: "ReportConfirm",
  components: {
    MessageWindow
  },
  data() {
    return {
      risks: [
        {id:1, riskLevel:"無い"},
        {id:2, riskLevel:"低い"},
        {id:3, riskLevel:"可能性あり"},
        {id:4, riskLevel:"高い"},
      ],
      trusts: [
        {id:1, loseTrust:"損なわない"},
        {id:2, loseTrust:"あまり損なわない"},
        {id:3, loseTrust:"少し損なう"},
        {id:4, loseTrust:"大きく損なう"},
      ]
    }
  },
  props: [
    "postData",
    "formNum"
  ],
  computed: {
    ...mapGetters(['getUserInfo', 'getJobs', 'getDepts', 'getClinicalDepts', 'getScenes' ,'getContents', 'getDetails', 'getMistakes', 'getDests','getMessageWindowStatus'])
  },
  methods: {
    ...mapActions(['axiosGetJobs','axiosGetDepts',"axiosGetClinicalDepts", "axiosGetScenes", "axiosGetContents", "axiosGetDetails", "axiosGetMistakes", "axiosGetDests", "axiosPostReport", 'toggleMessageWindow']),
    async onSubmit() {
      await this.axiosPostReport(this.postData)
      this.toggleMessageWindow(true)
    },
    decreaseForm() {
      this.$emit("update:formNum", this.formNum - 1)
    },
  },
  created() {
    this.axiosGetJobs()
    this.axiosGetDepts()
    this.axiosGetClinicalDepts()
    this.axiosGetScenes()
    this.axiosGetContents()
    this.axiosGetDetails()
    this.axiosGetMistakes()
    this.axiosGetDests()
  }
}
</script>
