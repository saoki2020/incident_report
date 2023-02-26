<template>
  <div class="modal">
    <div class="modal_box">
      <div class="modal_message">
        レポートを削除しますか？
      </div>
      <div class="error_message">
        {{errorMessage}}
      </div>
      <div class="modal_action">
        <button class="modal_btn_back" @click="toggleDeleteWindow(false)">戻る</button>
        <button class="modal_btn_post" @click="deleteReport">削除する</button>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions } from 'vuex'
export default {
  name: "DeleteWindow",
  props: [
    "reportNo"
  ],
  data:() => ({
    errorMessage: '',
  }),
  computed: {
  },
  methods: {
    ...mapActions(['toggleDeleteWindow','axiosDeleteReport','axiosGetReport']),
    deleteReport() {
      try {
      this.axiosDeleteReport(this.reportNo)
      this.toggleDeleteWindow(false)
      this.axiosGetReport()
      } catch (error) {
        this.errorMessage = "レポートを削除できません"
      }
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
