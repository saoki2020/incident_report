<template>
  <v-app>
    <v-container v-if="getScenes.length&&getContents.length&&getDetails.length&&getMistakes.length&&getDests.length">
      <v-row v-for="(item,index) in getReport" :key="index" class="mb-12" no-gutters>
        <v-col cols="1">
          <v-row no-gutters>
            <v-row no-gutters justify="center">
              <v-btn v-if="item.user_id===getUserInfo.user_id&&!item.comment"
              small
              class="ma-1"
              color="teal"
              dark
              @click="editActive(item.report_no)">
              編集
              </v-btn>
            </v-row>
            <v-row no-gutters justify="center">
              <v-btn v-if="item.user_id===getUserInfo.user_id&&!item.comment"
              small
              class="ma-1"
              color="pink"
              dark
              @click="reportDelete(item.report_no)">
              削除
              </v-btn>
            </v-row>
          </v-row>
        </v-col>
        <v-col cols="11" class="report_border">
          <v-row class="cell_border" no-gutters >
            <v-col cols="2" class="cell_border">
              <span>レポートNo：</span>{{item.report_no}}
            </v-col>
            <v-col cols="2" class="cell_border">
              <span>発生日：</span>{{item.incident_datetime | moment("YYYY年M月D日 H:mm") }}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'incident_datetime', item.report_datetime)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="2" class="cell_border">
              <span>発生場所：</span>{{getScenes[item.scene_id-1].scene}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'scene_id', item.scene_id)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
              {{item.scene_id}}
            </v-col>
            <v-col cols="2" class="cell_border">
              <span>内容：</span>{{getContents[item.content_id-1].content}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'content_id', item.content_id)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="2" class="cell_border">
              <span>詳細：</span>{{getDetails[item.detail_id-1].detail}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'detail_id', item.detail_id)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="2" class="cell_border">
              <span>誤内容：</span>{{getMistakes[item.mistake_id-1].mistake}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'mistake_id', item.mistake_id)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="3" class="cell_border">
              <span>報告日時：</span>{{item.report_datetime | moment("YYYY年M月D日 H:mm") }}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'report_datetime', item.report_datetime)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>報告先：</span>{{getDests[item.dest_id-1].dest}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'dest_id', item.dest_id)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>生命への危険度：</span>{{risks[item.risk-1].riskLevel}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'risk', item.risk)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>患者の信頼度：</span>{{trusts[item.lose_trust-1].loseTrust}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'lose_trust', item.lose_trust)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="3" class="cell_border">
              <span>-発生時の状況-</span><br>{{item.situation}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'situation', item.situation)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>-その後の対応-</span><br>{{item.response}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'response', item.response)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>-発生の要因-</span><br>{{item.factor}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'factor', item.factor)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
            <v-col cols="3" class="cell_border">
              <span>-防止策-</span><br>{{item.prevention}}
              <v-btn v-if="item.report_no==selectedReport" color="cyan" class="mx-2" fab dark x-small @click="openEditWindow(item.report_no, 'prevention', item.prevention)">
                <v-icon dark>mdi-pencil</v-icon>
              </v-btn>
            </v-col>
          </v-row>
          <v-row class="cell_border" no-gutters>
            <v-col cols="12" class="cell_border">
              <span>-役職者のコメント-</span>
              <br>
              <p>
                {{item.comment}}
              </p>
            </v-col>
          </v-row>
        </v-col>
      </v-row>
    <DeleteWindow v-if="getDeleteWindowStatus" :reportNo.sync="reportNo"/>
    <EditWindow v-if="getEditWindowStatus" :reportData.sync="reportData"/>
    </v-container>
  </v-app>
</template>


<script>
import { mapActions, mapGetters } from 'vuex'
import DeleteWindow from '../components/DeleteWindow.vue'
import EditWindow from '../components/EditWindow.vue'

export default {
  name: "ReportList",
  components: {
    DeleteWindow,
    EditWindow
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
      isActive: false,
      selectedReport: '',
      reportData: {
        reportNo: '',
        itemName: '',
        itemValue: ''
      }
    }
  },
  computed: {
    ...mapGetters(["getReport",'getScenes','getContents','getDetails','getMistakes','getDests','getUserInfo','getDeleteWindowStatus','getEditWindowStatus'])
  },
  methods: {
    ...mapActions(["axiosGetReport","axiosGetScenes","axiosGetContents","axiosGetDetails","axiosGetMistakes","axiosGetDests","toggleDeleteWindow","toggleEditWindow"]),
    reportDelete(value) {
      console.log(`report_no = value = ${value}`)
      this.reportNo = value
      this.toggleDeleteWindow(true)
    },
    reportEdit(value){
      this.reportNo = value
      this.toggleEditWindow(true)
    },
    editActive(value){
      if (this.isActive == false) {
        this.isActive = true
        this.selectedReport = value
      } else {
        this.isActive = false
        this.selectedReport = ''
      }
    },
    openEditWindow(num, item, value) {
      this.reportData.reportNo = num
      this.reportData.itemName = item
      this.reportData.itemValue = value
      this.toggleEditWindow(true)
    }
  },
  created() {
    this.axiosGetReport()
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
