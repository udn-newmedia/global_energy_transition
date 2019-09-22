<template>
  <div
    class="article-arrow-container"
    :style="{
      top: startCoordY + 'px',
    }"
  >
    <svg :width="svgWidth" :height="svgHeight">
      <g
        id="article-arrow"
        class="arrow-group-1"
        :style="{
          transform: 'scaleY(' + arrowScaleY + ') translateX(' + arrowTranslateX + 'px)',
        }"
      >
        <path
          id="svg_8"
          :class="{
            'arrow': true,
            'arrow-animation': coverHighlightFlag,
          }"
          fill="none"
          stroke="#1eee78aa"
          stroke-width="6"
          stroke-dasharray="none"
          d="M21.5,18.453125 C 22.5,18.453125,25.034765243530273,20.004831314086914,32.5,29.453125 40.0675048828125,39.030853271484375,47.91779708862305,51.18486404418945,55.5,63.453125 63.97715759277344,77.1694564819336,70.02114868164062,97.24396514892578,74.5,135.453125 77.53591918945312,161.35260009765625,76.5,182.453125,76.5,201.453125 76.5,217.453125,75.23632049560547,232.56982421875,72.5,247.453125 69.34209442138672,264.6294860839844,64.5586166381836,277.82733154296875,59.5,290.453125 55.34184265136719,300.8314514160156,51.93049621582031,307.58612060546875,50.5,311.453125 48.94841003417969,315.6474609375,46.5,321.453125,44.5,325.453125 42.5,329.453125,41.5,334.453125,40.5,335.453125 38.5,337.453125,37.084102630615234,338.2142028808594,35.5,341.453125 34.11064910888672,344.2938537597656,33.5,346.453125,32.5,347.453125 31.5,348.453125,29.88268280029297,350.52923583984375,29.5,351.453125 28.958803176879883,352.7596740722656,27.88268280029297,353.52923583984375,27.5,354.453125 26.958803176879883,355.7596740722656,25.807451248168945,356.6391296386719,24.5,358.453125 23.673095703125,359.60040283203125,22.5,360.453125,21.5,361.453125 L 21.5,362.453125"
        />
        <line
          id="svg_9"
          :class="{
            'line': true,
            'line-animation': coverHighlightFlag,
          }"
          fill="none"
          stroke="#1eee78aa"
          stroke-width="6"
          stroke-opacity="null"
          fill-opacity="null"
          x1="20.68182384967804"
          y1="363.27130115032196"
          x2="20.68182384967804"
          y2="336.27130115032196"
          stroke-linejoin="null"
          stroke-linecap="null"
          stroke-dasharray="none"
        />
        <line
          id="svg_10"
          :class="{
            'line': true,
            'line-animation': coverHighlightFlag,
          }"
          fill="none"
          stroke-width="6"
          stroke-opacity="null"
          fill-opacity="null"
          x1="44.7727352976799"
          y1="360.63494884967804"
          x2="19.77273577451706"
          y2="361.63494884967804"
          stroke-linejoin="null"
          stroke-linecap="null"
          stroke-dasharray="none"
          stroke="#1eee78aa"
        />
      </g>
    </svg>
  </div>
</template>

<script>
export default {
  name: 'ArticleArrow',
  props: {
    startPosition: {
      type: String,
      required: true,
    },
    endPosition: {
      type: String,
      required: true,
    },
    coverHighlightFlag: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {
      svgWidth: window.innerWidth,
      svgHeight: 0,
      startCoordY: 0,
      arrowScaleY: 1,
      arrowTranslateX: 0,
    };
  },
  computed: {
    isMob() {
      return window.innerWidth > 768 ? false : true;
    },
  },
  mounted() {
    this.startCoordY = document.getElementById(this.startPosition).offsetTop;
    this.svgHeight = document.getElementById(this.endPosition).offsetTop - this.startCoordY;
    this.arrowScaleY = ((document.getElementById(this.endPosition).offsetTop - this.startCoordY) / document.getElementById('article-arrow').getBBox().height) * (this.isMob ? 0.9 : 0.85);
    this.arrowTranslateX = document.getElementById(this.startPosition).clientWidth * (this.isMob ? 1.1 : 1);
  },
};
</script>

<style lang="scss" scoped>
.article-arrow-container {
  position: absolute;
  left: 0;
  width: 100vw;
  .arrow {
    stroke-dasharray: 1000;
    stroke-dashoffset: 1500;
    transition: 0;
  }
  .arrow-animation {
    stroke-dashoffset: 500;
    transition: .666s 3s ease-in-out;
  }
  .line {
    opacity: 0;
    transition: 0;
  }
  .line-animation {
    opacity: 1;
    transition: .666s 3.6s ease-in-out;
  }
}
</style>