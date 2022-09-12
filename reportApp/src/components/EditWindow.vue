<template>
<v-app>
  <div class="modal">
    <div class="modal_box">
      <v-form ref="formValid">
        <v-text-field
          v-if="reportData.itemName=='incident_datetime'"
          type="date"
          label="発生日"
          v-model="newDate"
          :rules="[required]"
          @blur="setEditData();setNewDateTime()"
        />
        <v-text-field
          v-if="reportData.itemName=='incident_datetime'"
          type="time"
          label="発生時刻"
          v-model="newTime"
          :rules="[required]"
          @blur="setEditData();setNewDateTime()"
        />
        <v-select
          v-if="reportData.itemName=='scene_id'"
          label="発生場所"
          v-model="newValue"
          :items="getScenes"
          item-text="scene"
          item-value="scene_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-select
          v-if="reportData.itemName=='content_id'"
          label="内容"
          v-model="newValue"
          :items="getContents"
          item-text="content"
          item-value="content_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-select
          v-if="reportData.itemName=='detail_id'"
          label="詳細"
          v-model="newValue"
          :items="getDetails"
          item-text="detail"
          item-value="detail_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-select
          v-if="reportData.itemName=='mistake_id'"
          label="誤内容"
          v-model="newValue"
          :items="getMistakes"
          item-text="mistake"
          item-value="mistake_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-text-field
          v-if="reportData.itemName=='patient_name'"
          label="患者氏名"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-text-field
          v-if="reportData.itemName=='patient_age'"
          label="患者年齢"
          v-model="newValue"
          type="number"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-radio-group
        v-if="reportData.itemName=='patient_gender'"
        v-model="newValue"
        label="性別"
        row
        :rules="[required]"
        @change="setEditData()"
        >
          <v-radio label="男" value="Male"></v-radio>
          <v-radio label="女" value="Female"></v-radio>
        </v-radio-group>
        <v-select
          v-if="reportData.itemName=='clinical_dept_id'"
          label="診療科"
          v-model="newValue"
          :items="getClinicalDepts"
          item-text="clinical_dept_name"
          item-value="clinical_dept_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-text-field
          v-if="reportData.itemName=='disease'"
          label="傷病名"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-text-field
          v-if="reportData.itemName=='hospital_date'"
          type="date"
          label="入院日"
          v-model="newDate"
          :rules="[required]"
          @blur="setEditData();setNewDateTime()"
        />
        <v-text-field
          v-if="reportData.itemName=='doctor'"
          label="主治医"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-text-field
          v-if="reportData.itemName=='report_datetime'"
          type="date"
          label="報告日"
          v-model="newDate"
          :rules="[required]"
          @blur="setEditData();setNewDateTime()"
        />
        <v-text-field
          v-if="reportData.itemName=='report_datetime'"
          type="time"
          label="報告時刻"
          v-model="newTime"
          :rules="[required]"
          @blur="setEditData();setNewDateTime()"
        />
        <v-select
          v-if="reportData.itemName=='dest_id'"
          label="報告先"
          v-model="newValue"
          :items="getDests"
          item-text="dest"
          item-value="dest_id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-select
          v-if="reportData.itemName=='risk'"
          label="生命への危険度"
          v-model="newValue"
          :items="risks"
          item-text="riskLevel"
          item-value="id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-select
          v-if="reportData.itemName=='lose_trust'"
          label="患者への信頼"
          v-model="newValue"
          :items="trusts"
          item-text="loseTrust"
          item-value="id"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-textarea
          v-if="reportData.itemName=='situation'"
          prepend-inner-icon="mdi-comment"
          class="mx2"
          label="発生時の状況"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-textarea
          v-if="reportData.itemName=='response'"
          prepend-inner-icon="mdi-comment"
          class="mx2"
          label="その後の対応"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-textarea
          v-if="reportData.itemName=='factor'"
          prepend-inner-icon="mdi-comment"
          class="mx2"
          label="発生の要因"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
        <v-textarea
          v-if="reportData.itemName=='prevention'"
          prepend-inner-icon="mdi-comment"
          class="mx2"
          label="防止策"
          v-model="newValue"
          :rules="[required]"
          @blur="setEditData()"
        />
      </v-form>
      <div class="error_message">
        {{errorMessage}}
      </div>
      <div class="modal_action">
        <button class="modal_btn_back" @click="toggleEditWindow(false)">戻る</button>
        <button class="modal_btn_post" @click="editReport">編集する</button>
      </div>
    </div>
  </div>
</v-app>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "EditWindow",
  props: [
    "reportData"
  ],
  data:() => ({
    errorMessage: '',
    required: value => !!value || "必須項目です",
    newDate: '',
    newTime: '',
    editData: {
      reportNo: '',
      itemName: '',
      itemValue: ''
    },
    newValue: '',
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
  }),
  computed: {
    ...mapGetters(['getScenes','getContents','getDetails','getMistakes','getDests','getClinicalDepts'])
  },
  methods: {
    ...mapActions(['toggleEditWindow','axiosGetReport','axiosEditReport','axiosGetScenes','axiosGetContents','axiosGetDetails','axiosGetMistakes','axiosGetDests','axiosGetClinicalDepts']),
    editReport() {
      if (this.$refs.formValid.validate()){
        try {
          this.axiosEditReport(this.editData)
          this.toggleEditWindow(false)
          this.axiosGetReport()
        } catch (error) {
          this.errorMessage = "レポートを編集できません"
        }
      }
    },
    setNewDateTime() {
      this.editData.itemValue = this.newDate + ' ' + this.newTime
    },
    setEditData() {
      this.editData.reportNo = this.reportData.reportNo
      this.editData.itemName = this.reportData.itemName
      this.editData.itemValue = this.newValue
    }
  },
  created() {
    this.axiosGetReport()
    this.axiosGetScenes()
    this.axiosGetContents()
    this.axiosGetDetails()
    this.axiosGetMistakes()
    this.axiosGetDests()
    this.axiosGetClinicalDepts()
    // 編集前のデータを表示
    this.newValue = this.reportData.itemValue
  }
}
</script>


<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.modal {
  position: fixed;
  top:0;
  left:0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 1;
}

.modal_box {
  position: absolute;
  top: 50%;
  left: 50%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  width: 50%;
  height: auto;
  padding: 32px;
  background-color: #fff;
  border-radius: 4px;
  transform: translate(-50%, -50%);
  word-break: normal;
}

.modal_message {
  font-size: 20px;
}

.error_message {
  font-size: 20px;
  color:red;
}

.modal_action {
  display: flex;
  justify-content: space-between;
}

.modal_btn_back {
  width: 130px;
  margin-left: 16px;
  padding: 8px;
  line-height: 1.5;
  font-weight: bold;
  border: 1px solid #00D8D8;
  background-color: #fff;
  color: #00D8D8;
  cursor: pointer;
}

.modal_btn_post {
  width: 130px;
  margin-left: 16px;
  padding: 8px;
  line-height: 1.5;
  font-weight: bold;
  color: #fff;
  border: 1px solid rgb(196, 196, 196);
  cursor: pointer;
  background-color: #00D8D8;
}

</style>
