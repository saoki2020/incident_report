<script>
import { Bar } from 'vue-chartjs/legacy'

export default {
  name: 'ChartView',
  extends: Bar,
  props: {
    chartData: {
      type: Object,
      default: null
    },
    options: {
      type: Object,
      default: null
    }
  },
  mounted () {
    this.renderChart(this.chartData.datacollection, this.options)
  }
}
</script>
