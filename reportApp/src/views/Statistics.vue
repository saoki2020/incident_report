<template>
  <v-app>
    <v-container>

    </v-container>
  </v-app>
</template>


<script>
import { mapActions, mapGetters } from 'vuex'
export default {
  name: "StatisTics",
  data() {
    return {
    }
  },
  computed: {
    ...mapGetters([])
  },
  methods: {
    ...mapActions([]),
  }
}
</script>

<style scoped>
  .text {
    white-space: pre-wrap;
  }
</style>
