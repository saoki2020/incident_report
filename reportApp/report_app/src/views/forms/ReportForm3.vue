<template>
<!-- アクシデント内容 -->
  <v-card>
    <v-card-title class="teal lighten-3">
      <span>アクシデント内容を入力してください</span>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-row>
          <v-col cols="6">
            <v-text-field
            type="date"
            label="発生日"
            v-model="incidentDate"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            type="time"
            label="発生時刻"
            v-model="incidentTime"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="発生場所"
              v-model="selectedScene"
              :items="getScenes"
              item-text="scene"
              item-value="scene_id"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="内容"
              v-model="selectedContent"
              :items="getContents"
              item-text="content"
              item-value="content_id"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="詳細"
              v-model="selectedDetail"
              :items="getDetails"
              item-text="detail"
              item-value="detail_id"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="誤内容"
              v-model="selectedMistake"
              :items="getMistakes"
              item-text="mistake"
              item-value="mistake_id"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="生命への危険度"
              v-model="selectedRisk"
              :items="risks"
              item-text="riskLevel"
              item-value="id"
            />
          </v-col>
          <v-col cols="6">
            <v-select
              label="患者への信頼"
              v-model="selectedTrust"
              :items="trusts"
              item-text="loseTrust"
              item-value="id"
            />
          </v-col>
          <v-col cols="12">
            <v-select
              label="報告先"
              v-model="selectedDest"
              :items="getDests"
              item-text="dest"
              item-value="dest_id"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            type="date"
            label="報告日"
            v-model="reportDate"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            type="time"
            label="報告時刻"
            v-model="reportTime"
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
  name: "ReportForm3",
  props: [
    "iDate",
    "iTime",
    "scene",
    "content",
    "detail",
    "mistake",
    "risk",
    "trust",
    "dest",
    "rDate",
    "rTime",
  ],
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
  computed: {
    ...mapGetters([
      'getScenes',
      'getContents',
      'getDetails',
      'getMistakes',
      'getDests',
      ]),
    incidentDate: {
      get(){
        return this.iDate
      },
      set(val){
        this.$emit('update:iDate', val)
      }
    },
    incidentTime: {
      get(){
        return this.iTime
      },
      set(val){
        this.$emit('update:iTime', val)
      }
    },
    selectedScene: {
      get(){
        return this.scene
      },
      set(val){
        this.$emit('update:scene', val)
      }
    },
    selectedContent: {
      get(){
        return this.content
      },
      set(val){
        this.$emit('update:content', val)
      }
    },
    selectedDetail: {
      get(){
        return this.detail
      },
      set(val){
        this.$emit('update:detail', val)
      }
    },
    selectedMistake: {
      get(){
        return this.mistake
      },
      set(val){
        this.$emit('update:mistake', val)
      }
    },
    selectedRisk: {
      get(){
        return this.risk
      },
      set(val){
        this.$emit('update:risk', val)
      }
    },
    selectedTrust: {
      get(){
        return this.trust
      },
      set(val){
        this.$emit('update:trust', val)
      }
    },
    selectedDest: {
      get(){
        return this.dest
      },
      set(val){
        this.$emit('update:dest', val)
      }
    },
    reportDate: {
      get(){
        return this.rDate
      },
      set(val){
        this.$emit('update:rDate', val)
      }
    },
    reportTime: {
      get(){
        return this.rTime
      },
      set(val){
        this.$emit('update:rTime', val)
      }
    },
  },
  methods: {
    ...mapActions([
      "axiosGetScenes",
      "axiosGetContents",
      "axiosGetDetails",
      "axiosGetMistakes",
      "axiosGetDests"
      ]),
  },
  created() {
    this.axiosGetScenes()
    this.axiosGetContents()
    this.axiosGetDetails()
    this.axiosGetMistakes()
    this.axiosGetDests()
  }
}
</script>
