<template>
  <div class="modal">
    <div class="modal_box">
      <div class="modal_message">
        コメントを入力してください
      </div>
      <v-form ref="formValid">
        <v-textarea v-model="inputComment" @focus="clearError" :rules="[required]"/>
      </v-form>
      <div class="error_message">
        {{errorMessage}}
      </div>
      <div class="modal_action">
        <button class="modal_btn_back" @click="toggleMessageWindow(false)">戻る</button>
        <button class="modal_btn_post" @click="postComment">送信する</button>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "CommentWindow",
  props: [
    "reportNo"
  ],
  data:() => ({
    inputComment: '',
    errorMessage: '',
    required: v => !!v || "必須項目です",
  }),
  computed: {
    ...mapGetters(['getMessageWindowStatus','getReport'])
  },
  methods: {
    ...mapActions(['toggleMessageWindow','axiosPostComment','axiosGetReportForChief','axiosGetCommentedReport']),
    async postComment() {
      const commentData = {
        reportNo: this.reportNo,
        comment: this.inputComment
      }
      try {
        if (this.$refs.formValid.validate()) {
          await this.axiosPostComment(commentData)
          // コメントを送信したら一覧を再取得
          if (this.$router.currentRoute.path == '/ChiefPage') this.axiosGetReportForChief()
          if (this.$router.currentRoute.path == '/ChiefCommented') this.axiosGetCommentedReport()
          this.toggleMessageWindow(false)
        }
      } catch (error) {
        this.errorMessage = "コメントを登録できません"
      }
    },
    clearError() {
      this.errorMessage = ''
    }
  },
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
