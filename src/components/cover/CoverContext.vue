<template>
  <div class="cover-context">
    <div class="content">
      <p><br></p>
      <p><br></p>
      <p><br></p>
      <p>車子一路駛於福島田間道路，稻田與太陽能板不斷在眼前交錯，越往東南的海邊走，太陽能板的數量也越來越多。福島縣在2011年東日本大地震中受到核事故重創後，正力爭轉型，從核災縣變為引領日本再生能源發展的新能源大縣。</p>
      <p>{{highlightText.textReadyQueue}}<span class="text-highlight">{{highlightText.highlight}}</span></p>
      <p>福島縣企畫調整部復興綜合計劃課副課長山田清貴表示，福島的復興不能只是重建，眼光必須看得更遠，過去的福島曾是能源重鎮，未來要成為引領日本新能源的大縣，只有創造走在新時代尖端的產業，福島才能獲得重生。</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'CoverContext',
  data() {
    return {
      highlightText: {
        origin: '福島縣府在核事故一年後、2012年3月立刻修訂了福島再生能源推進展望，基本理念是打造安心、安全可持續發展的社會，從此不再仰賴核能。福島縣府並訂下2040年全縣使用再生能源的目標。',
        textReadyQueue: '',
        highlight: '',
      }
    }
  },
  mounted() {
    console.log(this.highlightText.textReadyQueue.concat(this.highlightText.origin));
  },
};
</script>

<style lang="scss" scoped>
.cover-context {
  position: relative;
  background-color: #000000;
  p {
    color: #ffffff;
  }
  .text-highlight {
    background-color: #1eee78;
  }
}
</style>