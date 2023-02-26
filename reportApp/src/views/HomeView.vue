<template>
  <v-app>
    <v-container>
      <v-card class="ma-12">
        <v-card-text class="text text-center">
          {{message}}
        </v-card-text>
      </v-card>
    </v-container>
  </v-app>
</template>


<script>
export default {
  name: "HomeView",
  data() {
    return {
      message:"インシデントレポートの目的は「再発防止」です。\n 反省文や始末書ではありません。\n このレポートを提出することによって個人に不利益が生じることはありません\n 安心・安全な医療を提供するために\n 協力をお願いいたします"
    }
  }
}
</script>

<style scoped>
  .text {
    white-space: pre-wrap;
  }
</style>
