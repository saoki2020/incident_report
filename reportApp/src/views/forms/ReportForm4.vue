<template>
<!-- 詳細 -->
  <v-card>
    <v-card-title class="teal lighten-3">
      <span>詳細を入力してください</span>
    </v-card-title>
    <v-card-text>
      <v-form ref="formValid">
        <v-row>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="発生時の状況"
              v-model="incidentSituation"
              :rules="[required]"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="その後の対応"
              v-model="incidentResponse"
              :rules="[required]"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="発生の要因"
              v-model="incidentFactor"
              :rules="[required]"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="防止策"
              v-model="incidentPrevention"
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
          <v-btn  v-if="formNum<=4" class="teal lighten-2" dark @click="increaseForm">次へ</v-btn>
        </v-col>
      </v-row>
    </v-card-actions>
  </v-card>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "ReportForm4",
  props: [
    "situation",
    "response",
    "factor",
    "prevention",
    "formNum"
  ],
  data() {
    return {
      required: value => !!value || "必須項目です",
    }
  },
  computed: {
    incidentSituation: {
      get(){
        return this.situation
      },
      set(val){
        this.$emit('update:situation', val)
      }
    },
    incidentResponse: {
      get(){
        return this.response
      },
      set(val){
        this.$emit('update:response', val)
      }
    },
    incidentFactor: {
      get(){
        return this.factor
      },
      set(val){
        this.$emit('update:factor', val)
      }
    },
    incidentPrevention: {
      get(){
        return this.prevention
      },
      set(val){
        this.$emit('update:prevention', val)
      }
    },
  },
  methods: {
    increaseForm() {
      if (this.$refs.formValid.validate())
        this.$emit("update:formNum", this.formNum + 1)
    },
    decreaseForm() {
      this.$emit("update:formNum", this.formNum - 1)
    },
  }
}
</script>
