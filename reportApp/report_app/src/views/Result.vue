<template>
  <v-app>
    <h1>Result</h1>
    <div v-for="(item,key) in getResult" :key="key">
      {{key}}: {{item}}
    </div>

    <h1>Error</h1>
    <div v-for="(item,key) in getError" :key="key">
      {{key}}: {{item}}
    </div>
    <v-btn @click="onTestMail">メール送信</v-btn>
  </v-app>
</template>


<script>
import axios from 'axios'
import { mapGetters} from 'vuex'
export default {
  name: "ResultPage",
  data() {
    return {
    }
  },
  computed: {
  ...mapGetters(['getResult','getError']),
  },
  methods: {
    async onTestMail() {
      try {
      const res = await axios.get("http://localhost:3000/mail")
      console.log(`res.data = ${res.data}`)
      console.log('get.email success')
      } catch (error) {
        console.log('get.email error')
      }
    }
  },
  mounted() {
    console.dir(this.getResult);
    console.dir(this.getError);
  }
}
</script>
