<template>
  <div id="app">
    <HeadBar/>
    <Cover :frogFlag="frogFlag"/>
    <GradientConnection/>
    <div class="cover-context black-bg">
      <div class="content">
        <ArticleArrow v-if="!isIE" startPosition="cover-arrow-start" endPosition="cover-arrow-end" :coverHighlightFlag="coverHighlightFlag"/>
        <p><br></p>
        <p>車子一路駛於福島田間道路，稻田與太陽能板不斷在眼前交錯，越往東南的海邊走，太陽能板的數量也越來越多。福島縣在2011年東日本大地震中受到核事故重創後，正力爭轉型，從核災縣變為引領日本再生能源發展的新能源大縣。</p>
        <p><br></p>
        <div id="cover-arrow-start"/>
        <p id="cover-highlight-text">
          <mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && coverHighlightFlag,
            }"
          >
            福島縣府在核事故一年後、2012年3月立刻修訂了福島再生能源推進展望，基本理念是打造安心、安全可持續發展的社會，從此不再仰賴核能。福島縣府並訂下2040年全縣使用再生能源的目標。
          </mark>
        </p>
        <p><br></p>
        <p>福島縣企畫調整部復興綜合計劃課副課長山田清貴表示，福島的復興不能只是重建，眼光必須看得更遠，過去的福島曾是能源重鎮，未來要成為引領日本新能源的大縣，只有創造走在新時代尖端的產業，福島才能獲得重生。</p>
        <p><br></p>
        <div id="cover-arrow-end"/>
        <div class="energy-chart-wrapper">
          <img
            class="energy-chart-title"
            :src="require('./assets/title/title_2018_tw.svg')"
            alt="2018台灣發電結構"
          >
          <img
            class="energy-chart"
            :src="require(
              isMob ?
              './assets/chart/chart_2018_tw_m.svg' :
              './assets/chart/chart_2018_tw_pc.svg'
            )"
            alt="2018台灣發電結構"
          >
        </div>
        <div class="energy-chart-wrapper">
          <img
            class="energy-chart-title"
            :src="require('./assets/title/title_2018_word.svg')"
            alt="2018全球發電結構"
          >
          <img
            class="energy-chart"          
            :src="require(
              isMob ?
              './assets/chart/chart_2018_word_m.svg' :
              './assets/chart/chart_2018_word_pc.svg'
            )"
            alt="2018全球發電結構"
          >
        </div>
        <p><br></p>
        <p>當能源轉型已勢在必行，各國政府如何協助燃煤產業轉型、催生再生能源產業，民間團體又如何將節能與公民發電落實於日常生活中？</p>
        <p><br></p>
        <p>《聯合報》採訪團隊實際走訪英國、德國、荷蘭、日本、韓國，紀錄這5個國家的能源轉型之路，希望借鏡國外經驗，讓台灣的能源轉型之路走得更順、走得更遠。</p>
      </div>
    </div>
    <Anchor :currentPage="0" :anchorFixedFlag="anchorFixedFlag"/>
    <section class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_1,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_Japan_title.svg')" alt="日本福島能源轉型">
        </div>
      </div>
    </section>
    <GradientConnection/>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <h3>日本的兩難：擁核還是廢核？</h3>
        <p><br></p>
        <p>福島核災事件後，日本能源政策在8年間兩次大轉彎，最終考慮降低發電成本、氣候變遷、降低能源海外依存度等因素，決定再次擁抱核電，並計劃在2030年，將核電佔比恢復到逼近核事故前的水準。</p>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="black-bg">
      <HandDrawn subTitle="日本發電結構"/>
    </section>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <p><br></p>
        <p>車子一路駛於福島田間道路，稻田與太陽能板不斷在眼前交錯，越往東南的海邊走，太陽能板的數量也越來越多。福島縣在2011年東日本大地震中受到核事故重創後，正力爭轉型，從核災縣變為引領日本再生能源發展的新能源大縣。</p>
        <p><br></p>
        <p>福島縣府在核事故一年後、2012年3月立刻修訂了福島再生能源推進展望，基本理念是打造安心、安全可持續發展的社會，從此不再仰賴核能。福島縣府並訂下2040年全縣使用再生能源的目標。</p>
        <p><br></p>
        <p>福島縣企畫調整部復興綜合計劃課副課長山田清貴表示，福島的復興不能只是重建，眼光必須看得更遠，過去的福島曾是能源重鎮，未來要成為引領日本新能源的大縣，只有創造走在新時代尖端的產業，福島才能獲得重生。</p>
        <p><br></p>
        <p><br></p>
        <Youtube src="https://www.youtube.com/embed/_4Pxf78migU"></Youtube>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="gray-bg">
      <div id="section-cover-2" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_2,
            'section-cover-2': true,
          }"
        />
      </div>
      <div class="content gray-bg">
        <div class="section-cover-description">原本是日本核能大縣的福島縣在核災後，選擇全面擁抱再生能源。記者蔡佩芳／攝影</div>
        <p><br></p>
        <h2>一場大地震 扭轉福島發展方向</h2>
        <p><br></p>
        <p>福島除了是農作種類豐富的農業大縣，傳統上更是日本的能源大縣，不僅水力發電興盛，也是火力、核能發電重鎮，東日本大地震前，福島提供首都東京在內首都圈4成用電。</p>
        <p><br></p>
        <p>山田清貴表示，東日本大地震後，福島做為關東電力供給主力的結構崩解，以核能為中心的能源產業必須轉型，再生能源是代表性的新技術，也是福島未來發展方向。</p>
        <p><br></p>
        <p>福島沿海因海嘯重創，加上核事故影響，曾經較大範圍的疏散居民，雖然經過這幾年輻射檢測，避難指示區域已縮小到全縣的2.3%，但許多人、特別是年輕一代離家多年，早已在他鄉展開新生活，閒置的土地為發展再生能源提供了充分的空間。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <div id="section-cover-3" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_3,
            'section-cover-3': true,
          }"
        />
      </div>
      <div class="content gray-bg">
        <div class="section-cover-description">原本是日本核能大縣的福島縣在核災後，選擇全面擁抱再生能源。記者蔡佩芳／攝影</div>
        <p><br></p>
        <p>福島縣企畫調整部能源課主幹（相當於課長）武內正志表示，利用政府補助，福島大力推進太陽能光電收購以及蓄電池設施的興建，2017年已順利將再生能源所占電源比例提升到30.3%，對2020年達到4成的近程目標，縣府充滿信心。</p>
        <p><br></p>
        <p>武內分析，包括太陽能、風力甚至生質能發電，福島具備了發展再生能源豐沛條件，且再生能源發電都不是巨型電廠，中小企業也能發展，在推動再生能源的普及上，並不需要仰賴大型電力公司的協助。</p>
        <p><br></p>
        <div class="image-wrapper">
          <img
            :src="require(isMob ? './assets/mob/global_energy_transition_Japan_artical_image01_m.jpg' : './assets/pc/global_energy_transition_Japan_artical_image01.jpg')"
            alt="能源轉型"
          >
          <img
            :src="require(isMob ? './assets/mob/global_energy_transition_Japan_artical_image02_m.jpg' : './assets/pc/global_energy_transition_Japan_artical_image02.jpg')"
            alt="能源轉型"
          >
          <div class="image-description">福島的可移動式氫能系統。記者蔡佩芳／攝影</div>
        </div>
        <p><br></p>
        <h2>重生的福島 不會再走回頭路</h2>
        <p><br></p>
        <p>前往福島縣廳訪問的這天午後，福島下了場彷彿能洗淨一切的滂沱大雨，隨著天氣放晴後也為福島帶來了一個好消息。</p>
        <p><br></p>
        <p>前往縣廳拜會的日本東京電力公司社長小早川智明正式告知福島縣知事內堀雅雄，東電已決定將福島第二核電廠除役，包括福島核二廠的4座反應爐與核一廠6座反應爐，福島縣內核子爐將全數廢爐。內堀回應，福島嚴肅看待這項決定，並希望安全、切實地推進廢爐作業。</p>
        <p><br></p>
        <p>但福島追求的還要更多，山田清貴表示，縣府的目標不只是停止所有核電廠運作，而是將所有與核有關的事務，包括儲存在縣內的燃料棒、核廢料都移出縣外，讓福島成為沒有核能沒有輻射的縣。</p>
        <p><br></p>
        <p id="text-highlight-1">福島在核事故後也持續與中央聯繫，提供各種資料，希望遊說政府放棄核能。但
          <mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-black': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_1,
            }"
          >
            相對於福島的去核決心，日本中央政府再次將核電定義為重要基礎電源，決定重啟核電，8年間也有多個核電廠取得地方同意重新商轉。
          </mark>
        </p>
        <p><br></p>
        <p>山田表示，能源是國家政策的一環，有很多考慮的面向，福島縣無法干涉國家的決定。在國家補助下，有些地方在確保安全運轉前提下願意接受核電，但他表示，「福島不會再走回頭路。」</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
      <NextSection
        :directInfo="{
          'prev': null,
          'next': {
            'title': '南韓',
            'url': 'South_Korea/',
            'description': '南韓再生能源中心落腳新萬金',
          }
        }"
      />
    </section>
    <div class="ending-container">
      <RelatedSection/>
      <p><br></p>
      <p><br></p>
      <div class="content">
        <div class="editor-container">
          <div class="editor">
            <div class="editor-title">採訪團隊</div>
            <div class="editor-member">
              <div class="editor-member-name">彭慧明、</div>
              <div class="editor-member-name">董俞佳、</div>
              <div class="editor-member-name">蔡佩芳、</div>
              <div class="editor-member-name">謝汶均</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">製作人</div>
            <div class="editor-member">
              <div class="editor-member-name">謝汶均<span style="opacity: 0">、</span></div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">影像</div>
            <div class="editor-member">
              <div class="editor-member-name">游昌樺、</div>
              <div class="editor-member-name">鄭超文、</div>
              <div class="editor-member-name">葉信菉、</div>
              <div class="editor-member-name">余承翰、</div>
              <div class="editor-member-name">報系資料</div>
              <div class="editor-member-name">照</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">設計</div>
            <div class="editor-member">
              <div class="editor-member-name">張心慈<span style="opacity: 0">、</span></div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">數位行銷</div>
            <div class="editor-member">
              <div class="editor-member-name">－－－<span style="opacity: 0">、</span></div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">網頁製作</div>
            <div class="editor-member">
              <div class="editor-member-name">楊若榆<span style="opacity: 0">、</span></div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">製作單位</div>
            <div class="editor-member">
              <div class="editor-member-name">聯合報新</div>
              <div class="editor-member-name">媒體中心</div>
              <div class="editor-member-name">視覺設計</div>
              <div class="editor-member-name">中心</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">監製</div>
            <div class="editor-member">
              <div class="editor-member-name">聯合報新</div>
              <div class="editor-member-name">聞部</div>
              <div class="editor-member-name">聯合報系</div>
              <div class="editor-member-name">願景工作室</div>
            </div>
          </div>
          <div class="editor" style="margin-top: 20px">
            <div class="editor-title"></div>
            <div class="editor-member">
              <div class="editor-member-name">2019.10.</div>
              <div class="editor-member-name">14</div>
            </div>
          </div>
        </div>
        <p><br></p>
        <Share href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
        <p><br></p>
        <p><br></p>
        <div class="logo-container">
          <a href="https://udn.com/news/index" target="_blank" name="聯合新聞網" @click="sendLogoGA('.com')">
            <img :src="require('./assets/logo/udn.jpg')" alt="聯合新聞網" >
          </a>
          <a href="https://vision.udn.com/index.html" target="_blank" name="願景工程" @click="sendLogoGA('vision')">
            <img :src="require('./assets/logo/vision.jpg')" alt="願景工程">
          </a>
          <a href="https://www.facebook.com/udnNewMediaLab/" target="_blank" name="新媒體中心" @click="sendLogoGA('newmedia')">
            <img :src="require('./assets/logo/nm.jpg')" alt="新媒體中心" @click="sendLogoGA('newmedia')">
          </a>
        </div>
        <p><br></p>
        <p><br></p>
      </div>
      <div class="quesiton-comment-container">
        <p><br></p>
        <p><br></p>
        <Question href="https://www.surveycake.com/s/KpQKN" text="填寫閱讀體驗問卷"/>
        <p><br></p>
        <div class="content">
          <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
        </div>
        <p><br></p>
        <p><br></p>
      </div>
    </div>
    <Foot/>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

// import _debounce from 'lodash.debounce';
import Anchor from './components/Anchor.vue'
import ArticleArrow from './components/cover/ArticleArrow.vue'
import Cover from './components/cover/Cover.vue'
import GradientConnection from './components/cover/GradientConnection.vue'
import FBComment from './components/FBComment.vue'
import Foot from './components/Foot.vue'
import HandDrawn from './components/HandDrawn.vue'
import HeadBar from './components/HeadBar.vue'
import NextSection from './components/NextSection.vue'
import RelatedSection from './components/RelatedSection.vue'
import Share from './components/Share.vue'
import Question from './components/Question.vue'
import Youtube from './components/Youtube.vue'

export default {
  name: 'app',
  components: {
    Anchor,
    ArticleArrow,
    Cover,
    GradientConnection,
    FBComment,
    Foot,
    HandDrawn,
    HeadBar,
    NextSection,
    RelatedSection,
    Share,
    Question,
    Youtube,
  },
  data() {
    return {
      anchorFixedFlag: false,
      frogFlag: false,
      coverHighlightFlag: false,
      textHighlightFlag_1: false,
      sectionCoverFlag_1: false,
      sectionCoverFlag_2: false,
      sectionCoverFlag_3: false,
      totalPageHeight: 0,
      readProgress: 0,
    };
  },
  computed: {
    isMob() {
      return window.innerWidth <= 768 ? true : false;
    },
    isIE() {
      return Utils.detectIE() ? true : false;
    },
  },
  methods: {
    handleScroll() {
      const anchorPosition = document.getElementById('anchor').getBoundingClientRect();
      const coverPostition = document.getElementById('cover-highlight-text').getBoundingClientRect();
      const textHighlightPosition = document.getElementById('text-highlight-1').getBoundingClientRect();
      const scoverPostition_1 = document.getElementById('section-cover-1').getBoundingClientRect();
      const scoverPostition_2 = document.getElementById('section-cover-2').getBoundingClientRect();
      const scoverPostition_3 = document.getElementById('section-cover-3').getBoundingClientRect();

      // anchor fixed event
      if (anchorPosition.top < 0) this.anchorFixedFlag = true;
      else this.anchorFixedFlag = false;

      // cover frog event
      if (window.pageYOffset < window.innerHeight) this.frogFlag = true;
      else this.frogFlag = false;
      // cover text highlihgt event.
      if ( coverPostition.top < window.innerHeight * 0.5 ) this.coverHighlightFlag = true;
      // text highlihgt 1 event.
      if ( textHighlightPosition.top < window.innerHeight * 0.5 ) this.textHighlightFlag_1 = true;

      // section-cover-1
      if (
        scoverPostition_1.top < 0 &&
        scoverPostition_1.bottom > -window.innerHeight * 0.5
      ) this.sectionCoverFlag_1 = true;
      else this.sectionCoverFlag_1 = false;
      // section-cover-2
      if (
        scoverPostition_2.top < 0 &&
        scoverPostition_2.bottom > 0
      ) this.sectionCoverFlag_2 = true;
      else this.sectionCoverFlag_2 = false;
      // section-cover-3
      if (
        scoverPostition_3.top < 0 &&
        scoverPostition_3.bottom > 0
      ) this.sectionCoverFlag_3 = true;
      else this.sectionCoverFlag_3 = false;



      // read progress GA
      this.sendReadProgressGA();
    },
    sendReadProgressGA() {
      let currentHeight = window.pageYOffset;
      let totalHeight = this.totalPageHeight - window.innerHeight;
      let progress = ((currentHeight / totalHeight) * 100).toFixed(2);
      if (Math.floor(progress / 10) > this.readProgress) {
        this.readProgress = Math.floor(progress / 10);
        window.ga("newmedia.send", {
          "hitType": "event",
          "eventCategory": "read",
          "eventAction": "scroll",
          "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [page read " + (this.readProgress * 10) + "%]"
        })
      }
    },
    sendLogoGA(title) {
      window.ga("newmedia.send", {
        "hitType": "event",
        "eventCategory": "related",
        "eventAction": "click",
        "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [" + title + "]",
      })
    },
  },
  mounted() {
    this.totalPageHeight = document.body.scrollHeight;
    window.addEventListener('scroll', this.handleScroll);
  },
  destroyed() {
    window.addEventListener('scroll', this.handleScroll);
  },
};
</script>
<style lang="scss">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
#app {
  p {
    font-size: 18px;
    line-height: 1.67;
    margin: 0;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      font-size: 20px;
      line-height: 1.7;
    }
    @media only screen and (min-width: 1025px) {
      font-size: 21px;
      line-height: 1.45;
    }
  }
  h2 {
    font-size: 24px;
    line-height: 1.33;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      font-size: 32px;
      line-height: 1.3;
    }
    @media only screen and (min-width: 1025px) {
      font-size: 35px;
      line-height: 1.34;
    }
  }
  section {
    position: relative;
    width: 100%;
    background-color: #ffffff;
    .section-cover-container {
      position: relative;
      width: 100%;
      height: 100vh;
      .section-cover {
        position: relative;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        background-size: cover;
        background-position: center center;
        color: #ffffff;
        img {
          // section cover title
          position: absolute;
          bottom: 15%;
          left: 50px;
          width: 80px;
          @media only screen and (min-width: 768px) and (max-width: 1024px) {
            width: 120px;
            bottom: 20%;
            left: 125px;
          }
          @media only screen and (min-width: 1025px)  {
            width: 120px;
            bottom: 20%;
            left: 300px;
          }
        }
      }
      .section-cover-active {
        position: fixed;
        top: 0;
        left: 0;
        transform: scale(1.01);
        transition: .333s ease-in-out;
      }
      .section-cover-1 {
        background-image: url('./assets/mob/global_energy_transition_Japan_cover_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_Japan_cover_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_Japan_cover.jpg');
        }
      }
      .section-cover-2 {
        background-image: url('./assets/mob/global_energy_transition_Japan_image01_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_Japan_image01_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_Japan_image01.jpg');
        }
      }
      .section-cover-3 {
        background-image: url('./assets/mob/global_energy_transition_Japan_image02_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_Japan_image02_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_Japan_image02.jpg');
        }
      }
    }
    .section-cover-description {
      font-size: 15px;
      margin-bottom: 50px;
      @media only screen and (min-width: 769px) {
        font-size: 18px;
      }
    }
  }
  .content {
    position: relative;
    margin: 0 auto;
    text-align: justify;
    padding: 20px 60px;
    @media only screen and (min-width: 769px) {
      padding: 20px calc(50vw - 440px);
    }
    .image-wrapper {
      img {
        width: 100%;
        margin: 5px 0;
        @media only screen and (min-width: 768px) {
          width: 50%;
          &:first-child {
            padding-right: 5px;
          }
          &:last-child {
            padding-left: 5px;
          }
        }
      }
      .image-description {
        color: #5a5a5a;
        font-size: 15px;
      }
    }
  }
  .black-bg {
    // background-color: #0a0808;
    background-color: #000000;
    color: #ffffff;
  }
  .gray-bg {
    background-color: #f6f6f6;
  }
  .white-text {
    color: #ffffff;
  }
  .cover-context {
    position: relative;
    padding-bottom: 50px;
    overflow: hidden;
    p {
      color: #ffffff;
    }
  }
  .ending-container {
    position: relative;
    font-size: 15px;
    background-color: #f6f6f6;
    .quesiton-comment-container {
      background-color: #ffffff;
    }
  }
  .text-highlight {
    padding: 2px;
    background: linear-gradient(90deg, #1eee78 50%, transparent 50%);
    background-position: right bottom;
    background-size: 200% 100%;
    transition: 0s;
  }
  .text-highlight-ie {
    padding: 2px;
    background-position: left bottom;
    background-size: 200% 100%;
    background-color: #1eee78;

  }
  .text-highlight-black {
    color: #000000;
  }
  .text-highlight-white {
    color: #ffffff;
  }
  .text-highlight-animate {
    background-position: left bottom;
    transition: 3s ease-in-out;
    color: #000000;
  }
  .editor-container {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    .editor {
      position: relative;
      width: 100%;
      display: flex;
      .editor-title {
        position: relative;
        text-align: right;
        width: 40%;
        @media only screen and (max-width: 320px) {
          width: 30%;
        }
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          width: 45%;
        }
        @media only screen and (min-width: 1025px)  {
          width: 45%;      
        }
      }
      .editor-member {
        position: relative;
        width: 60%;
        padding: 0 10px 0 0px;
        @media only screen and (max-width: 320px) {
          width: 70%;
          padding: 0 5px 0 5px;
        }
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          width: 55%;        
          padding: 0 30% 0 5px;
        }
        @media only screen and (min-width: 1025px)  {
          width: 55%;
          padding: 0 35% 0 5px;        
        }
        .editor-member-name {
          position: relative;
          display: inline-block;
          width: 50%;
          &:nth-child(odd) {
            text-align: right;
          }
          &:nth-child(even) {
            text-align: left;          
          }
        }
      }
    }
  }
  .energy-chart-wrapper {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    .energy-chart-title {
      width: auto;
      margin-bottom: 10px;
    }
    .energy-chart {
      width: 100%;
      margin-bottom: 50px;
      @media only screen and (min-width: 768px) and (max-width: 1024px) {
        width: 420px;      
      }
      @media only screen and (min-width: 1025px) {
        width: 420px;
      }
    }
  }
  .logo-container {
    text-align: center;
    img {
      width: 50%;
      @media only screen and (min-width: 768px) and (max-width: 1024px) {
        width: 33%;      
      }
      @media only screen and (min-width: 1280px) {
        width: 200px;
        margin: 0 20px;
      }
    }
  }
}
</style>
