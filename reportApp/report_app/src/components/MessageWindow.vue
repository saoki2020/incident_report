<template>
  <div class="modal">
    <div  v-if="getPostStatus === 'REGISTRATION SUCCESS'" class="modal_box">
      <div class="modal_message">
        {{ myEmail }}に登録用URLを送信しました
      </div>
      <div class="modal_action">
        <button class="modal_btn" @click="toggleMessageWindow(false); $router.push('/SignIn')">OK</button>
      </div>
    </div>

    <div  v-if="getPostStatus === 'REPORT SUCCESS'" class="modal_box">
      <div class="modal_message">
        インシデントを報告しました。
      </div>
      <div class="modal_action">
        <button class="modal_btn" @click="toggleMessageWindow(false); $router.push('/ReportList')">OK</button>
      </div>
    </div>

    <div  v-if="getPostStatus === 'ERROR'" class="modal_box">
      <div class="modal_message">
        <h3>ERROR</h3>
        <div v-if="typeof(getError) === 'object'">
          <div v-for="(item,key) in getError" :key="key">
            {{key}}: {{item}}
          </div>
        </div>
        <div v-else>{{getError}}</div>
      </div>
      <div class="modal_action">
        <button class="modal_btn" @click="toggleMessageWindow(false)">OK</button>
      </div>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "MessageWindow",
  props: {
    myEmail: {
      type: String,
      default: ''
    }
  },
  methods: {
    ...mapActions(['toggleMessageWindow']),
  },
  computed: {
    ...mapGetters(['getPostStatus', 'getError']),
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

.modal_action {
  display: flex;
  justify-content: flex-end;
}

.modal_btn {
  width: 130px;
  margin-left: 16px;
  padding: 8px;
  line-height: 1.5;
  font-weight: bold;
  border: 1px solid rgb(196, 196, 196);
  cursor: pointer;
}

</style>
