<template>
  <div class="hand-drawn-container">
    <div class="hand-drawn-title">畫畫看</div>
    <h4 class="hand-drawn-sub-title">{{subTitle}}</h4>
    <div class="legend-container">
      <div v-for="(item, index) in energyData" :key="index" class="legend">
        <div class="legend-color" :style="{backgroundColor: item.color}" />
        <div class="legend-title">{{item.title}}</div>
      </div>
    </div>
    <div class="hand-drawn-wrapper">
      <svg id="hand-drawn-chart" :width="svgWidth" :height="svgHeight" />
      <div class="chart-description">資料來源／日本資源能源廳</div>
      <button v-show="!answerFlag" id="answer-button" class="answer-button" name="解答">解答</button>
      <div v-show="answerFlag" class="answer-wrapper">日本政府於2014年的能源基本計畫，決定再次擁抱核電。</div>
    </div>
  </div>
</template>

<script>
import * as d3 from "d3";

export default {
  name: "HandDrawn",
  props: {
    subTitle: {
      type: String,
      default: null
    },
  },
  data() {
    return {
      energyData: {
        0: {
          title: "燃煤",
          color: "#b86f52",
          data: [27.8, 28.0, 31.0, 32.9, 33.4, 34.1, 32.8, 32.7]
        },
        1: {
          title: "天然氣",
          color: "#9b287b",
          data: [29.0, 37.7, 40.1, 40.9, 43.0, 40.9, 41.2, 39.5]
        },
        2: {
          title: "石油",
          color: "#ffa552",
          data: [8.6, 14.5, 17.5, 14.5, 11.1, 9.8, 9.7, 8.7]
        },
        3: {
          title: "再生能源",
          color: "#2d95ff",
          data: [9.4, 10.3, 9.9, 10.8, 12.5, 14.2, 14.6, 16]
        },
        4: {
          title: "核能",
          color: "#cdee1e",
          data: [25.1, 9.3, 1.5, 0.9, 0.0, 0.9, 1.7, 3.1]
        },
      },
      answerData: {
        answerYear: 2014,
        hintText: '畫畫看日本核電佔比變化',
      },
      answerFlag: false,
      yearList: [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017],
      drawnYearList: [2011, 2012, 2013, 2014, 2015, 2016, 2017],
      svgWidth: window.innerWidth,
      svgHeight: window.innerHeight * 0.5,
      drawDataIndex: 4,
      drawnFlag: false,
      drawnStep: 2011,
    };
  },
  computed: {
    isMob() {
      return window.innerWidth <= 768 ? true : false;
    },
  },
  methods: {
    drawChart() {
      const vm = this;
      vm.svgWidth =  window.innerWidth;
      vm.svgHeight = window.innerHeight * 0.5;
      const _isMob = window.innerWidth <= 768 ? true : false;
      const dataset = Object.values(vm.energyData);
      const marginParams = {
        top: 25,
        bottom: 25,
      };
      const config = {
        width: vm.svgWidth,
        height: vm.svgHeight - marginParams.top - marginParams.bottom,
        dataLength: dataset.length,
        xAxisNum: 8,
        yAxisNum: 5,
        marginSide: _isMob ? 50 : 0,
        // marginSide: _isMob ? 50 : (vm.svgWidth - 880) * 0.5,
        marginSideRatio: _isMob ? 0.5 : 1,
      };

      const xScale = d3
        .scaleLinear()
        .domain([0, config.xAxisNum - 1]) // input
        .range([config.marginSide, config.width - config.marginSide * config.marginSideRatio]); // output
      const xScaleTime = d3
        .scaleLinear()
        .domain([2010, 2017]) // input
        .range([config.marginSide, config.width - config.marginSide * config.marginSideRatio]); // output
      const yScale = d3
        .scaleLinear()
        .domain([0, 50])
        .range([config.height, 0]);
      const customXScale = d3
        .scaleQuantize()
        .domain([config.marginSide, config.width - config.marginSide * config.marginSideRatio])
        .range(vm.drawnYearList);
      const line = d3
        .line()
        .x((d, i) => xScale(i))
        .y((d) => yScale(d))
        .curve(d3.curveLinear);
      const customLine = d3
        .line()
        .x((d, i) => xScale(i + 1))
        .y((d) => d)
        .curve(d3.curveMonotoneX);

      d3.select('#hand-drawn-chart').selectAll('.hand-drawn-chart').remove();
      const svg = d3.select('#hand-drawn-chart')
        .append('g')
        .attr('class', 'hand-drawn-chart')
        .attr('transform', 'translate(' + 0 + ',' + marginParams.top + ')');
      const answerButton = d3.select('#answer-button');
      
      // assign answer button evetn
      answerButton.on('click', handleAnswerClick)

      // draw axis
      svg
        .append('g')
        .attr('class', 'x axis')
        .attr('transform', 'translate(0,' + config.height + ')')
        .call(
          d3.axisBottom(xScaleTime)
            .tickFormat(d3.format('d'))
            .tickValues(vm.yearList)
        );
      svg
        .append('g')
        .attr('class', 'y axis')
        .call(drawAxisY);

      // draw line
      for (let i = 0; i < dataset.length; i++) {
        if (vm.drawDataIndex === i) {
          svg
            .append('path')
            .datum([dataset[i].data[0], dataset[i].data[1]])
            .attr('id', 'active-line')
            .attr('class', 'line line-active')
            .attr('stroke', () => dataset[i].color)
            .attr('d', line);
          svg
            .append('path')
            .datum([yScale(dataset[i].data[1]), yScale(dataset[i].data[1])])
            .attr('class', 'hint line line-active')
            .attr('stroke', () => dataset[i].color)
            .attr('stroke-dasharray', 8)
            .attr('stroke-dashoffset', 10)
            .attr('d', customLine);
          svg
            .append('text')
            .attr('class', 'hint hint-text')
            .attr('x', xScale(2))
            .attr('y', yScale(dataset[i].data[1]))
            .text(vm.answerData.hintText);
        } else {
          svg
            .append('path')
            .datum(dataset[i].data)
            .attr('class', 'line')
            .attr('stroke', () => dataset[i].color)
            .attr('d', line);
        }
      }

      // draw dots
      svg.append('circle')
        .attr('class', 'line-dot')
        .attr('cx', xScale(0))
        .attr('cy', yScale(vm.energyData[vm.drawDataIndex].data[0]))
        .attr('r', 6)
        .style('fill', vm.energyData[vm.drawDataIndex].color);
      svg.append('circle')
        .attr('class', 'line-dot')
        .attr('cx', xScale(1))
        .attr('cy', yScale(vm.energyData[vm.drawDataIndex].data[1]))
        .attr('r', 6)
        .style('fill', vm.energyData[vm.drawDataIndex].color);
      svg.append('text')
        .attr('class', 'line-dot-text')
        .attr('x', xScale(0) + 5)
        .attr('y', yScale(vm.energyData[vm.drawDataIndex].data[0]) - 10)
        .style('fill', vm.energyData[vm.drawDataIndex].color)
        .text(vm.energyData[vm.drawDataIndex].data[0] + '%');
      svg.append('text')
        .attr('class', 'line-dot-text')
        .attr('x', xScale(1) + 5)
        .attr('y', yScale(vm.energyData[vm.drawDataIndex].data[1]) - 10)
        .style('fill', vm.energyData[vm.drawDataIndex].color)
        .text(vm.energyData[vm.drawDataIndex].data[1] + '%');

      // hand drawing event
      let customData = [
        yScale(vm.energyData[vm.drawDataIndex].data[1]),
      ];      
      let customCurrentMaxIndex = 1;
      d3.select('#hand-drawn-chart').call(d3.drag()
        .on('start', dragStarted)
        .on('drag', dragged)
        .on('end', dragEnded)
      );

      function dragStarted() {
        if (!vm.drawnFlag) {
          d3.selectAll('.hint').remove();
          drawCustomLine();
          vm.drawnFlag = true;
        }
      }
      function dragged() {
        switch (customXScale(d3.event.x)) {
          case 2012:
            handleDrawMove(2012);
            break;
          case 2013:
            handleDrawMove(2013);
            break;
          case 2014:
            handleDrawMove(2014);
            break;
          case 2015:
            handleDrawMove(2015);
            break;
          case 2016:
            handleDrawMove(2016);
            break;
          case 2017:
            handleDrawMove(2017);
            break;
          default:
            break;
        }
      }
      function dragEnded() {}
      function drawCustomLine() {
        svg.select('#custom-line').remove();
        svg.append('path')
            .datum(customData)
            .attr('id', 'custom-line')
            .attr('class', 'line line-active')
            .attr('stroke', vm.energyData[vm.drawDataIndex].color)
            .attr('stroke-dasharray', 8)
            .attr('stroke-dashoffset', 10)
            .attr('d', customLine);
      }
      function handleDrawMove(year) {
        if (vm.drawnYearList.indexOf(year) > customCurrentMaxIndex) {
          for (let i = customCurrentMaxIndex; i < vm.drawnYearList.indexOf(year); i++) {
            customData.push(Math.min(d3.event.y - 25, config.height));
          }
          customCurrentMaxIndex = vm.drawnYearList.indexOf(year)            
        } else {
          customData[vm.yearList.indexOf(year) - 1] = Math.min(d3.event.y - 25, config.height);
          drawCustomLine();
        }
      }
      function drawAxisY() {
        const yAxis = svg.selectAll('g.y.axis');        
        const yProfileLine = yAxis.attr('class', '.y-profile-lines');
        for (let i = 0; i < config.yAxisNum + 1; i++) {
          const yProfileLineGroup = yProfileLine.append('g').attr('class', '.y-profile-line-group');
          yProfileLineGroup.append('text')
            .attr('class', 'profile-text')
            .attr('x', config.marginSide - 30 * config.marginSideRatio)
            .attr('y', (config.height / config.yAxisNum) * i - 5)
            .text(() => (50- i * 10) + '%');
          yProfileLineGroup.append('line')
            .attr('class', 'profile-line')
            .attr('x1', 0)
            .attr('x2', config.width)
            .attr('y1', (config.height / config.yAxisNum) * i + 0.5)
            .attr('y2', (config.height / config.yAxisNum) * i + 0.5);
        }
      }
      function handleAnswerClick() {
        vm.answerFlag = true;
        const svg = d3.select('#hand-drawn-chart').select('.hand-drawn-chart')
        svg.select('#active-line')
          .datum(dataset[vm.drawDataIndex].data)
          .attr('d', line);
        svg.append('line')
          .attr('class', 'profile-line')
          .attr('x1', xScaleTime(vm.answerData.answerYear))
          .attr('x2', xScaleTime(vm.answerData.answerYear))
          .attr('y1', 0)
          .attr('y2', config.height)
        svg.append('circle')
          .attr('class', 'line-dot')
          .attr('cx', xScaleTime(vm.answerData.answerYear))
          .attr('cy', yScale(vm.energyData[vm.drawDataIndex].data[vm.yearList.indexOf(vm.answerData.answerYear)]))
          .attr('r', 6)
          .style('fill', vm.energyData[vm.drawDataIndex].color);
        svg.append('text')
          .attr('class', 'line-dot-text')
          .attr('x', xScaleTime(vm.answerData.answerYear) + 5)
          .attr('y', yScale(vm.energyData[vm.drawDataIndex].data[vm.yearList.indexOf(vm.answerData.answerYear)]) - 10)
          .style('fill', vm.energyData[vm.drawDataIndex].color)
          .text(vm.energyData[vm.drawDataIndex].data[vm.yearList.indexOf(vm.answerData.answerYear)] + '%');
      }
    },
  },
  mounted() {
    this.drawChart();
    window.addEventListener('resize', () => { this.drawChart(); });
  },
  destroyed() {
    window.removeEventListener('resize', () => { this.drawChart(); });    
  },
};
</script>

<style lang="scss">
.hand-drawn-container {
  width: 100%;
  overflow: hidden;
  .hand-drawn-wrapper {
    position: relative;
    width: 100%;
    overflow: hidden;
    text-align: center;
    margin-top: 20px;
    path {
      stroke-linecap: round;
    }
    .line {
      fill: none;
      stroke-width: 4;
      opacity: 0.4;
      @media only screen and (min-width: 769px) {
        stroke-width: 6;
      }
    }
    .line-active {
      opacity: 1;
    }
    .line-dot {

    }
    .hint-text {
      fill: #ffffff;
      font-size: 20px;
    }
    .profile-text {
      fill: #717171;
      font-size: 13px;
      text-anchor: end;
      @media only screen and (min-width: 769px) {
        font-size: 15px;
      }
    }
    .profile-line {
      opacity: 0.3;
      stroke-width: 1;
      stroke: lightgray;
    }
    g.x.axis {
      .domain {
        opacity: 0;
      }
      g.tick {
        line {
          opacity: 0;
        }
        text {
          font-size: 10px;
          color: #8f8f8f;
          @media only screen and (min-width: 769px) {
            font-size: 15px;
          }
        }
      }
    }
    .answer-button {
      position: relative;
      width: 300px;
      outline: none;
      background-color:inherit;
      border-radius: 4px;
      border: solid 1px #989898;
      color: #989898;
      padding: 20px 0;
      margin-top: 20px;
    }
    .answer-wrapper {
      position: relative;
      width: 300px;
      outline: none;
      background-color:inherit;
      border-radius: 4px;
      border: solid 1px #989898;
      color: #ffffff;
      text-align: justify;
      padding: 30px 20px;
      margin: 20px auto 0 auto;
    }
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
    @media only screen and (min-width: 769px) {
      float: initial;
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
      @media only screen and (min-width: 769px) {
        float: initial;
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
        @media only screen and (min-width: 769px) {
          width: 50px;
        }
      }
    }
  }
  .chart-description {
    font-size: 0.7rem;
    color: #989898;
    text-align: right;
    margin-right: 50px;
    @media only screen and (min-width: 769px) {
      margin-right: calc(50vw - 440px);
    }
  }
}
</style>