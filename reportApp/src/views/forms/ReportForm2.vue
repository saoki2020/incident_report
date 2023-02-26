<template>
<!-- 患者情報 -->
  <v-card>
    <v-card-title class="teal lighten-3">
      <span>患者情報を入力してください</span>
    </v-card-title>
    <v-card-text>
      <v-form ref="formValid">
        <v-row>
          <v-col cols="12">
            <v-text-field
            label="患者氏名"
            v-model="patientName"
            :rules="[required]"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="患者年齢"
            v-model="patientAge"
            type="number"
            :rules="[required]"
            />
          </v-col>
          <v-col cols="6">
            <v-radio-group v-model="patientGender" label="性別" row :rules="[required]">
              <v-radio label="男" value="Male"></v-radio>
              <v-radio label="女" value="Female"></v-radio>
            </v-radio-group>
          </v-col>
          <v-col cols="6">
            <v-select
              label="診療科"
              v-model="selectedDept"
              :items="getClinicalDepts"
              item-text="clinical_dept_name"
              item-value="clinical_dept_id"
              :rules="[required]"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="傷病名"
            v-model="diseaseName"
            :rules="[required]"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            type="date"
            label="入院日"
            v-model="hospitalDate"
            :rules="[required]"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="主治医"
            v-model="doctorName"
            :rules="[required]"
            />
          </v-col>
        </v-row>
      </v-form>
    </v-card-text>
    <v-card-actions class="justify-center">
      <v-row justify="center">
        <v-col cols="2">
          <v-btn v-if="1<formNum&&formNum<=5" color="teal" dark block outlined @click="decreaseForm">戻る</v-btn>
        </v-col>
        <v-col cols="2">
          <v-btn v-if="formNum<=4" class="teal lighten-2" dark block @click="increaseForm">次へ</v-btn>
        </v-col>
      </v-row>
    </v-card-actions>
  </v-card>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "ReportForm2",
  props: [
    "name",
    "age",
    "gender",
    "department",
    "disease",
    "date",
    "doctor",
    "formNum"
  ],
  data() {
    return {
      required: value => !!value || "必須項目です",
    }
  },
  computed: {
    ...mapGetters(['getClinicalDepts']),
    patientName: {
      get(){
        return this.name
      },
      set(val){
        this.$emit('update:name', val)
      }
    },
    patientAge: {
      get(){
        return this.age
      },
      set(val){
        this.$emit('update:age', val)
      }
    },
    patientGender: {
      get(){
        return this.gender
      },
      set(val){
        this.$emit('update:gender', val)
      }
    },
    selectedDept: {
      get(){
        return this.department
      },
      set(val){
        this.$emit('update:department', val)
      }
    },
    diseaseName: {
      get(){
        return this.disease
      },
      set(val){
        this.$emit('update:disease', val)
      }
    },
    hospitalDate: {
      get(){
        return this.date
      },
      set(val){
        this.$emit('update:date', val)
      }
    },
    doctorName: {
      get(){
        return this.doctor
      },
      set(val){
        this.$emit('update:doctor', val)
      }
    },
  },
  methods: {
    ...mapActions(["axiosGetClinicalDepts"]),
    increaseForm() {
      if (this.$refs.formValid.validate())
        this.$emit("update:formNum", this.formNum + 1)
    },
    decreaseForm() {
      this.$emit("update:formNum", this.formNum - 1)
    },
  },
  created() {
    this.axiosGetClinicalDepts()
  }
}
</script>
