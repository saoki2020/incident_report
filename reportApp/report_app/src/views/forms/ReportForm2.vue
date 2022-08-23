<template>
<!-- 患者情報 -->
  <v-card>
    <v-card-title class="teal lighten-3">
      <span>患者情報を入力してください</span>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-row>
          <v-col cols="12">
            <v-text-field
            label="患者氏名"
            v-model="patientName"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="患者年齢"
            v-model="patientAge"
            />
          </v-col>
          <v-col cols="6">
            <v-radio-group v-model="patientGender" label="性別" row>
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
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="傷病名"
            v-model="diseaseName"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            type="date"
            label="入院日"
            v-model="hospitalDate"
            />
          </v-col>
          <v-col cols="6">
            <v-text-field
            label="主治医"
            v-model="doctorName"
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
  name: "ReportForm2",
  props: [
    "name",
    "age",
    "gender",
    "department",
    "disease",
    "date",
    "doctor",
  ]
  ,
  data() {
    return {
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
  },
  created() {
    this.axiosGetClinicalDepts()
  }
}
</script>
