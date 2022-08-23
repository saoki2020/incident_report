<template>
<!-- 詳細 -->
  <v-card>
    <v-card-title class="teal lighten-3">
      <span>詳細を入力してください</span>
    </v-card-title>
    <v-card-text>
      <v-form>
        <v-row>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="発生時の状況"
              v-model="incidentSituation"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="その後の対応"
              v-model="incidentResponse"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="発生の要因"
              v-model="incidentFactor"
            />
          </v-col>
          <v-col cols="12">
            <v-textarea
              prepend-inner-icon="mdi-comment"
              class="mx2"
              label="防止策"
              v-model="incidentPrevention"
            />
          </v-col>
        </v-row>
      </v-form>
    </v-card-text>
    <!-- <v-card-actions class="justify-center">
      <v-btn class="teal lighten-2" dark block>報告する</v-btn>
    </v-card-actions> -->
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
    "prevention"
  ],
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
  }
}
</script>
