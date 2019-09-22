<template>
  <div class="hand-drawn-container">
    <div class="hand-drawn-title">畫畫看</div>
    <h4 class="hand-drawn-sub-title">{{subTitle}}</h4>
    <div class="legend-container">
      <div
        v-for="(item, index) in energyData"
        :key="index"
        class="legend"
      >
        <div class="legend-color" :style="{backgroundColor: item.color}"/>
        <div class="legend-title">{{item.title}}</div>
      </div>
    </div>
    <div class="hand-drawn-wrapper">
      <svg
        id="hand-drawn-chart"
        :width="svgWidth"
        :height="svgHeight"
      />
      <div class="chart-description">資料來源／日本資源能源廳</div>
    </div>
  </div>
</template>

<script>
import * as d3 from 'd3';

export default {
  name: 'HandDrawn',
  props: {
    subTitle: {
      type: String,
      default: null,
    },
  },
  data() {
    return {
      energyData: {
        0: {
          'title': '燃煤',
          'color': '#b86f52',
          'data': [],
        },
        1: {
          'title': '核能',
          'color': '#cdee1e',
          'data': [],
        },
        2: {
          'title': '天然氣',
          'color': '#9b287b',
          'data': [],
        },
        3: {
          'title': '石油',
          'color': '#ffa552',
          'data': [],
        },
        4: {
          'title': '再生能源',
          'color': '#2d95ff',
          'data': [],
        },
      },
      svgWidth: window.innerWidth,
      svgHeight: window.innerHeight * 0.5,
    };
  },
  computed: {
    
  },
  methods: {
    drawChart() {
      const svg = d3.select('#hand-drawn-chart');
      svg.append('circle')
        .attr('r', 100)
        .attr('fill', 'blue')
    },
  },
  mounted() {
    this.drawChart();
  },
};
</script>

<style lang="scss" scoped>
.hand-drawn-container {
  width: 100%;
  overflow: hidden;
  padding-bottom: calc(50vh + 100px);
  .hand-drawn-wrapper {
    position: absolute;
    left: 0;
    bottom: 50px;
    width: 100%;
    overflow: hidden;
  }
  .hand-drawn-title {
    position: relative;
    width: 100px;
    padding: 3px 8px;
    margin: 0 auto;
    border-radius: 2px;
    border: solid 1px #ffffff;
    letter-spacing: 1.8px;
    text-align: center;
  }
  .hand-drawn-sub-title {
    text-align: center;
    font-weight: bold;
  }
  .legend-container {
    position: relative;
    float: left;
    max-width: 880px;
    margin: 0 auto;
    padding: 0 10%;
    @media only screen and (min-width: 769px)  {
      clear: both;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 0;
    }
    .legend {
      float: left;
      display: flex;
      justify-content: center;
      align-items: center;
      @media only screen and (min-width: 769px)  {
        clear: both;
      }
      .legend-title {
        position: relative;
        margin: 0 5px;
      }
      .legend-color {
        position: relative;
        width: 45px;
        height: 10px;
        border-radius: 5px;
        @media only screen and (min-width: 769px)  {
          width: 50px;
        }
      }
    }
  }
  .chart-description {
    font-size: 0.7rem;
    color: #989898;
    text-align: right;
  }
}
</style>