<template>
  <v-app>
    <v-container>
      <v-row justify="start">
        <v-col cols="6">
          <h1>毎月のインシデント件数</h1>
        </v-col>
      </v-row>
      <v-row class="mt-n6">
        <v-col cols="2">
          <v-select :items="years" label="年" v-model="selectedYear" />
        </v-col>
      </v-row>
      <v-row>
        <v-col>
          <ChartView v-if="loaded" :chart-data.sync="chartdata" :options.sync="options" />
        </v-col>
      </v-row>
      <v-row justify="start">
        <v-col cols="6">
          <h1>毎月の内訳</h1>
        </v-col>
      </v-row>
      <v-row class="mt-n6">
        <v-col cols="2">
          <v-select :items="itemNames" label="項目" v-model="selectedItem" />
        </v-col>
      </v-row>
      <v-row>
        <v-data-table
        v-if="loaded"
        dense
        :headers="headers"
        :items="this.getItemCount"
        />
      </v-row>
    </v-container>
  </v-app>
</template>


<script>
import { mapActions, mapGetters } from 'vuex'
import ChartView from '../components/ChartView.vue'

export default {
  name: "StatisTics",
  components: {ChartView},
  data() {
    return {
      headers: [
        {
          text: '項目名',
          align: 'start',
          value: ''
        },
        {text: '1月', value: 'Jan'},
        {text: '2月', value: 'Feb'},
        {text: '3月', value: 'Mar'},
        {text: '4月', value: 'Apr'},
        {text: '5月', value: 'May'},
        {text: '6月', value: 'Jun'},
        {text: '7月', value: 'Jul'},
        {text: '8月', value: 'Aug'},
        {text: '9月', value: 'Sep'},
        {text: '10月', value: 'Oct'},
        {text: '11月', value: 'Nov'},
        {text: '12月', value: 'Dec'}
      ],
      chartdata: {
        datacollection: {
          labels: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
          datasets: [
            {
              label: 'インシデント件数',
              backgroundColor: '#f87979',
              data: []
            }
          ]
        }
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          yAxes: [
            {
              ticks: {
                min: 0
              }
            }
          ]
        }
      },
      loaded: false,
      years: [2019,2020,2021,2022],
      itemNames: ['発生場所', '内容', '詳細', '誤内容','部署'],
      selectedYear: 2019,
      selectedItem: '発生場所',
    }
  },
  computed: {
    ...mapGetters(['getItemCount','getChartData','getCountDept']),
  },
  methods: {
    ...mapActions(['axiosCountReport','axiosCountScene','axiosCountContent','axiosCountDetail','axiosCountMistake','axiosCountDept']),
    async changeItem(value) {
      switch (value){
        case '発生場所':
          await this.axiosCountScene(this.selectedYear)
          this.headers[0].value = 'scene'
          break
        case '内容':
          await this.axiosCountContent(this.selectedYear)
          this.headers[0].value = 'content'
          break
        case '詳細':
          await this.axiosCountDetail(this.selectedYear)
          this.headers[0].value = 'detail'
          break
        case '誤内容':
          await this.axiosCountMistake(this.selectedYear)
          this.headers[0].value = 'mistake'
          break
        case '部署':
          await this.axiosCountDept(this.selectedYear)
          this.headers[0].value = 'dept_name'
          break
        default:
          break
      }
    }
  },
  watch: {
    // 選択した年が変化したら件数を取得しなおす
    selectedYear: async function(value) {
      this.loaded = false
      try{
        await this.axiosCountReport(value)
        this.chartdata.datacollection.datasets[0].data = this.getChartData
        this.changeItem(this.selectedItem)
        this.loaded = true
      } catch (e) {
        console.error(e)
      }
    },
    selectedItem: function(value) {
      this.changeItem(value)
    }
  },
  async mounted() {
    this.loaded = false
    try{
      // グラフの初期値を取得
      await this.axiosCountReport(this.selectedYear)
      this.chartdata.datacollection.datasets[0].data = this.getChartData
      // 表の初期値を取得
      await this.axiosCountScene(this.selectedYear)
      this.headers[0].value = 'scene'
      this.loaded = true
    } catch (e) {
      console.error(e)
    }
  }
}
</script>

<style>
.v-data-table th {
  background: #83fff1fd;
}
.v-data-table td {
  background: #83fff14e;
}
.v-data-table tr:nth-child(odd) td {
  background: #fff;
}
.v-data-table tr:hover td {
  background-color: #83fff1;
}
</style>
