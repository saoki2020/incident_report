<template>
  <v-app>
    <v-container>
      <v-btn to="/ChiefPage" class="ma-2" color="teal" dark>コメント未登録</v-btn>
      <v-btn to="/ChiefCommented" class="ma-2" color="teal" dark outlined>コメント済み</v-btn>
    </v-container>
    <v-container v-if="getScenes.length&&getContents.length&&getDetails.length&&getMistakes.length&&getDests.length">
      <v-row v-for="(item,key) in getReport" :key="key" class="mb-12" no-gutters>
        <v-col cols="12" class="report_border">
          <v-row class="cell_border" no-gutters >
            <v-col cols="2" class="cell_border"><span>レポートNo：</span>{{item.report_no}}</v-col>
            <v-col cols="2" class="cell_border"><span>発生日：</span>{{item.report_datetime | moment("YYYY年M月D日 h:mm") }}</v-col>
            <v-col cols="2" class="cell_border"><span>発生場所：</span>{{getScenes[item.scene_id-1].scene}}</v-col>
            <v-col cols="2" class="cell_border"><span>内容：</span>{{getContents[item.content_id-1].content}}</v-col>
            <v-col cols="2" class="cell_border"><span>詳細：</span>{{getDetails[item.detail_id-1].detail}}</v-col>
            <v-col cols="2" class="cell_border"><span>誤内容：</span>{{getMistakes[item.mistake_id-1].mistake}}</v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="3" class="cell_border"><span>報告日時：</span>{{item.incident_datetime | moment("YYYY年M月D日 h:mm") }}</v-col>
            <v-col cols="3" class="cell_border"><span>報告先：</span>{{getDests[item.dest_id-1].dest}}</v-col>
            <v-col cols="3" class="cell_border"><span>生命への危険度：</span>{{risks[item.risk-1].riskLevel}}</v-col>
            <v-col cols="3" class="cell_border"><span>患者の信頼度：</span>{{trusts[item.lose_trust-1].loseTrust}}</v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="3" class="cell_border"><span>-発生時の状況-</span><br>{{item.situation}}</v-col>
            <v-col cols="3" class="cell_border"><span>-その後の対応-</span><br>{{item.response}}</v-col>
            <v-col cols="3" class="cell_border"><span>-発生の要因-</span><br>{{item.factor}}</v-col>
            <v-col cols="3" class="cell_border"><span>-防止策-</span><br>{{item.prevention}}</v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="12" class="cell_border">
              <span>-役職者のコメント-</span>
              <v-btn small class="teal lighten-2 ma-2" dark @click="openWindow(item.report_no)">コメント登録</v-btn>
              <br>
              <p>
                {{item.comment}}
              </p>
            </v-col>
          </v-row>
        </v-col>
      </v-row>
    </v-container>
    <CommentWindow v-if="getMessageWindowStatus" :reportNo.sync="reportNo"/>
  </v-app>
</template>


<script>
import { mapActions, mapGetters } from 'vuex'
import CommentWindow from '../components/CommentWindow.vue'
export default {
  name: "ChiefPage",
  components: {
    CommentWindow,
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
      ],
      reportNo: '',
    }
  },
  computed: {
    ...mapGetters(["getReport",'getScenes','getContents','getDetails','getMistakes','getDests','getUserInfo','getMessageWindowStatus'])
  },
  methods: {
    ...mapActions(["axiosGetReportForChief","axiosGetScenes","axiosGetContents","axiosGetDetails","axiosGetMistakes","axiosGetDests","toggleMessageWindow"]),
    openWindow(value) {
      console.log(`report_no = value = ${value}`)
      this.reportNo = value
      this.toggleMessageWindow(true)
    }
  },
  created() {
    this.axiosGetReportForChief()
    this.axiosGetScenes()
    this.axiosGetContents()
    this.axiosGetDetails()
    this.axiosGetMistakes()
    this.axiosGetDests()
  }
}
</script>

<style scoped>
  .cell_border {
    border-style: solid;
    border-width: thin;
    border-color: #00D8D8;
  }
  .report_border {
    border-style: solid;
    border-color: #00D8D8;
    box-shadow: 10px 5px 5px #afffff;
  }
  span {
    color: teal
  }
</style>
