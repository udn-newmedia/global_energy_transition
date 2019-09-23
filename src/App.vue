<template>
  <div id="app">
    <HeadBar/>
    <Cover :frogFlag="frogFlag"/>
    <GradientConnection/>
    <div class="cover-context">
      <div class="content">
        <ArticleArrow startPosition="cover-arrow-start" endPosition="cover-arrow-end" :coverHighlightFlag="coverHighlightFlag"/>
        <p><br></p>
        <p>車子一路駛於福島田間道路，稻田與太陽能板不斷在眼前交錯，越往東南的海邊走，太陽能板的數量也越來越多。福島縣在2011年東日本大地震中受到核事故重創後，正力爭轉型，從核災縣變為引領日本再生能源發展的新能源大縣。</p>
        <div id="cover-arrow-start"/>
        <p id="cover-highlight-text">
          <mark
            :class="{
              'text-highlight': true,
              'text-highlight-animate': coverHighlightFlag,
            }"
          >
            福島縣府在核事故一年後、2012年3月立刻修訂了福島再生能源推進展望，基本理念是打造安心、安全可持續發展的社會，從此不再仰賴核能。福島縣府並訂下2040年全縣使用再生能源的目標。
          </mark>
          福島縣府在核事故一年後、2012年3月立刻修訂了福島再生能源推進展望，基本理念是打造安心、安全可持續發展的社會，從此不再仰賴核能。福島縣府並訂下2040年全縣使用再生能源的目標。
        </p>
        <p>福島縣企畫調整部復興綜合計劃課副課長山田清貴表示，福島的復興不能只是重建，眼光必須看得更遠，過去的福島曾是能源重鎮，未來要成為引領日本新能源的大縣，只有創造走在新時代尖端的產業，福島才能獲得重生。</p>
        <p><br></p>
        <h3 id="cover-arrow-end">Title</h3>
        <img width="100%" :src="require('./assets/1.jpg')" alt="" srcset="">
      </div>
    </div>
    <section class="black-bg">
      <HandDrawn subTitle="日本發電結構"/>
    </section>
    <section class="black-bg">
      <div class="content">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem provident autem facere quaerat dolore incidunt unde adipisci iusto nihil voluptatibus nesciunt inventore, ut quo itaque, id maiores, animi ipsa maxime!</p>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed exercitationem commodi ipsam cum rem, quam blanditiis tempore hic vitae non fuga voluptatem error necessitatibus explicabo omnis aliquid? Quibusdam, ut qui!</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam aspernatur architecto asperiores possimus numquam sequi ad velit eius ipsam? Distinctio modi dolorum dolore cupiditate ducimus minus rem quasi dicta quam.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam, corporis expedita. Dignissimos iure soluta tenetur, cum dolores sapiente veritatis quam quis hic maiores modi, cupiditate veniam, beatae voluptates unde facere.</p>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Facere officia itaque maiores voluptatibus, nesciunt dolore ratione labore molestias. Quas fugit repudiandae magni aperiam assumenda quaerat quasi optio qui pariatur amet.
        </p>
        <NextSection/>
      </div>
    </section>
    <div class="ending-container">
      <RelatedSection/>
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
              <div class="editor-member-name">謝汶均</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">影像</div>
            <div class="editor-member">
              <div class="editor-member-name">游昌樺、</div>
              <div class="editor-member-name">鄭超文、</div>
              <div class="editor-member-name">葉信菉、</div>
              <div class="editor-member-name">余承翰、</div>
              <div class="editor-member-name">報系資料照</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">視覺設計</div>
            <div class="editor-member">
              <div class="editor-member-name">張心慈</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">網頁設計</div>
            <div class="editor-member">
              <div class="editor-member-name">楊若榆</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title">監製</div>
            <div class="editor-member">
              <div class="editor-member-name">林秀姿、</div>
              <div class="editor-member-name">董谷音、</div>
              <div class="editor-member-name">潘如瑩</div>
            </div>
          </div>
          <div class="editor">
            <div class="editor-title"></div>
            <div class="editor-member">
              <div class="editor-member-name">2019.10.14</div>
            </div>
          </div>
        </div>
        <Share href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
        <div class="logo-container"></div>
      </div>
      <div class="quesiton-comment-container">
        <Question href="https://www.surveycake.com/s/KpQKN" text="填寫閱讀體驗問卷"/>
        <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
      </div>
    </div>
    <Foot/>
  </div>
</template>

<script>
import _debounce from 'lodash.debounce';

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

export default {
  name: 'app',
  components: {
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
  },
  data() {
    return {
      frogFlag: false,
      coverHighlightFlag: false,
    };
  },
  methods: {
    handleScroll: _debounce(function() {
      // cover frog event
      if (window.pageYOffset < window.innerHeight) this.frogFlag = true;
        else this.frogFlag = false;
      // cover text highlihgt event.
      if (document.getElementById('cover-highlight-text').getBoundingClientRect().top > 0 && document.getElementById('cover-highlight-text').getBoundingClientRect().top < window.innerHeight * 1) this.coverHighlightFlag = true;
        // else this.coverHighlightFlag = false;
    }, 200),
  },
  mounted() {
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
  section {
    position: relative;
    width: 100%;
    background-color: #ffffff;
  }
  .content {
    max-width: 880px;
    margin: 0 auto;
    text-align: justify;
    padding: 20px 60px;
    @media only screen and (min-width: 769px)  {
      padding: 20px 0;
    }
  }
  .black-bg {
    background-color: #0a0808;
    color: #ffffff;
  }
  .cover-context {
    position: relative;
    background-color: #0a0808;
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
    color: #ffffff;
  }
  .text-highlight-animate {
    background-position: left bottom;
    transition: 3s ease-in-out;
    color: #000000;
  }
}

</style>
