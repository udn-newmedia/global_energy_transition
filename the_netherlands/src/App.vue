<template>
  <div id="app">
    <Anchor :currentPage="3" :anchorFixedFlag="true"/>
    <section class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': true,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_The_Netherlands_title.svg')" alt="荷蘭能源轉型">
        </div>
      </div>
    </section>
    <GradientConnection/>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <h3 class="green-title">綠能後段班的大逆轉</h3>
        <p><br></p>
        <p>荷蘭過去屬綠能後段班，直到2015年，環保組織代表百位公民「告政府」，認為政府未積極解決氣候變遷，法院判決荷蘭政府應修正減碳目標，荷蘭才開始踏上綠能覺醒之路。荷蘭政府在2019年發布多項減碳目標，包含2050年碳排放量應減少95%、2021年起正式課徵碳稅、所有燃煤電廠必須在2029年底關閉或改為生質電廠。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <HandDrawn subTitle="荷蘭發電結構"/>
      <div class="content">
        <p><br></p>
        <p><br></p>
        <p>在荷蘭，永續、環保的觀念很早就深入生活各個角落。荷蘭民眾大量使用公共運輸工具，該國火車在2017年全數轉為風力發電，火車站內設置許多永續概念設計，而為了將綠色交通落實在人們從家裡到火車站的「最後一哩路」，荷蘭中央及地方政府也積極鼓勵民眾以腳踏車取代汽機車，要減少荷蘭碳排放量、一步步邁向綠能大國。</p>
        <p><br></p>
        <p id="text-highlight-1">
          荷蘭國鐵（Nederlandse Spoorwegen, NS）每年使用超過1.2億千瓦度的電力，占荷蘭每年用電總量的1%，相當於阿姆斯特丹市的總用電量。
          <mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_1,
            }"
          >
            包括火車在內的交通工具，是荷蘭最先達到「零碳排放」的項目，荷蘭國鐵更比原訂目標提前一年、在2017年就達到全面使用風力發電。
          </mark>
        </p>
        <p><br></p>
        <p>荷蘭國鐵發言人吉爾特柯倫（Geert Koolen）指出，最大困難是要確保綠能供應量穩定持續，因此在能源供應上採多方採購，與荷蘭最大永續能源業者Eneco合作，確保能源來自新的永續能源供應地區。目前，一半的風能來自荷蘭，另一半來自瑞典（33%），芬蘭（15%）和比利時（2%）。吉爾特柯倫說，荷蘭鐵路每天運送超過百萬名乘客，但不排放任何二氧化碳。他說，如果每個汽車用戶每年乘坐一次火車，每年就可以減少14萬噸二氧化碳排放，希望幫助政府實現氣候協定目標。</p>
        <p><br></p>
        <p><br></p>
        <Youtube src="https://www.youtube.com/embed/xFZkhwQD4kE"></Youtube>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="black-bg">
      <div id="section-cover-2" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_2,
            'section-cover-2': true,
          }"
        >
          <GradientConnection :inner="true" :bottom="true"/>
          <div class="content">
            <div class="section-cover-description">荷蘭國鐵在2017年已全數轉為風力發電。記者葉信菉／攝影</div>
          </div>
        </div>
      </div>
      <div id="section-cover-3" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_3,
            'section-cover-3': true,
          }"
        >
          <GradientConnection :inner="true" :bottom="true"/>
          <div class="content">
            <div class="section-cover-description">荷蘭國鐵在2017年已全數轉為風力發電。記者葉信菉／攝影</div>
          </div>
        </div>
      </div>
    </section>
    <section class="white-bg">
      <div class="content gray-bg">
        <p><br></p>
        <p><br></p>
        <h3>不只火車用綠能 車站裝置也很「綠」</h3>
        <p><br></p>
        <p>除了使用可再生能源外，荷蘭國鐵在車站內也設有多項永續概念設計。例如荷蘭火車站多處月台屋頂上覆蓋太陽能板，供應月台看板所需電力，阿姆斯特丹站內設有風力渦輪機，靠火車頻繁進站的氣流帶動發電。</p>
        <p><br></p>
        <p id="text-highlight-2">
          <mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-black': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_2,
            }"
          >
            荷蘭國鐵也逐漸汰舊換新，最能廢物利用的部分是「賣火車」：將不能再使用的舊火車車廂逐步拆解，除了讓回收業者買走外，內部裝設用來做新產品
          </mark>
          ，包括椅子、火車車窗、室內裝潢、衣帽鉤、行李架甚至廣播揚聲器都可以拿來「翻新」，在車站內可見用火車地板及垃圾桶製成的乒乓球桌，還有垃圾桶拿來種植物、用舊火車座套製成袋子，回收再製了約1170萬公斤的廢物。
        </p>
        <p><br></p>
        <p>吉爾特柯倫也邀請觀光客到車站「盪鞦韆」，在烏特勒支中央火車站引入特殊的鞦韆，旅客可以盪鞦韆產生能量為手機充電，每天都吸引大人小孩到車站玩鞦韆兼充電，還是熱門打卡景點。</p>
        <p><br></p>
        <p><br></p>
        <div class="image-wrapper">
          <img
            :src="require(isMob ? './assets/mob/global_energy_transition_The_Netherlands_artical_image_m.jpg' : './assets/pc/global_energy_transition_The_Netherlands_artical_image.jpg')"
            alt="烏特勒支中央火車站引入特殊的鞦韆，旅客可以利用盪鞦韆為手機充電。記者葉信菉／攝影"
          >
          <div class="image-description">烏特勒支中央火車站引入特殊的鞦韆，旅客可以利用盪鞦韆為手機充電。記者葉信菉／攝影</div>
        </div>
        <p><br></p>
        <p><br></p>
        <h3>廣設腳踏車友善空間  讓民眾愛上以腳踏車代步</h3>
        <p><br></p>
        <p>大眾交通工具逐步採用綠能，但要去火車站的路上總不能充滿汽車。</p>
        <p><br></p>
        <p>在荷蘭國鐵總部所在的烏特勒支市，市政府與荷蘭國鐵共同合作改造烏特勒支中央車站，2019年8月19日正式啟動地下三層樓的腳踏車停車場，每天可停1.25萬輛腳踏車，是全世界最大腳踏車停車場。</p>
        <p><br></p>
        <p>這座停車場代表烏特勒支市政府「健康城市生活」的政策，荷蘭政府多年來推動腳踏車道計畫，烏特勒支副市長維客多艾弗特（Victor Everhardt）說，荷蘭人人都有腳踏車，騎腳踏車通勤是民眾日常。</p>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="white-bg">
        <div id="section-cover-4" class="section-cover-container">
          <div :class="{
              'section-cover': true,
              'section-cover-active': sectionCoverFlag_4,
              'section-cover-4': true,
            }"
          >
            <GradientConnection :inner="true" :bottom="true"/>
            <div class="content">
              <div class="section-cover-description">烏特勒支市擁有荷蘭最大的腳踏車停車場。記者葉信菉／攝影</div>
            </div>
          </div>
        </div>
        <div id="section-cover-5" class="section-cover-container">
          <div :class="{
              'section-cover': true,
              'section-cover-active': sectionCoverFlag_5,
              'section-cover-5': true,
            }"
          >
            <GradientConnection :inner="true" :bottom="true"/>
            <div class="content">
              <div class="section-cover-description">烏特勒支市擁有荷蘭最大的腳踏車停車場。記者葉信菉／攝影</div>
            </div>
          </div>
        </div>
        <div id="section-cover-6" class="section-cover-container">
          <div :class="{
              'section-cover': true,
              'section-cover-active': sectionCoverFlag_6,
              'section-cover-6': true,
            }"
          >
            <GradientConnection :inner="true" :bottom="true"/>
            <div class="content">
              <div class="section-cover-description">烏特勒支市擁有荷蘭最大的腳踏車停車場。記者葉信菉／攝影</div>
            </div>
          </div>
        </div>
    </section>
    <section class="white-bg">
      <div class="content gray-bg">
        <p><br></p>
        <p><br></p>
        <p>城市發展同時要兼顧環保和民眾生活空間、還要滿足交通需求並不容易。隨著烏特勒支市的快速發展，市府與國鐵都遇到共同問題「怎樣讓大家放棄自家汽車、使用公共運輸系統」？</p>
        <p><br></p>
        <p>維客多艾弗特坦言，不希望因為都市成長讓汽車大量進入市區，影響空氣、生活品質，還造成塞車，既然大家都騎腳踏車，就讓腳踏車成為人們從家裡到火車站的「最後一哩路」工具，所以從中央到地方，都積極改善腳踏車通路與大眾運輸基礎建設，不會讓民眾苦於找腳踏車停車位。</p>
        <p><br></p>
        <p>從風電火車到鞦韆充電架再到全球最大腳踏車停車場，荷蘭要用最接地氣的方式，實現他們的「綠色交通」藍圖。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <NextSection
        :directInfo="{
          'prev': {
            'title': '德國',
            'url': 'Germany/',
            'description': '別讓燃煤壞了啤酒',
          },
          'next': {
            'title': '英國',
            'url': 'United_Kingdom/',
            'description': '風電觀光潮正夯！帶你出海看風機 ',
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
            <div class="editor-title">製作人</div>
            <div class="editor-member">
              <div class="editor-member-name">謝汶均<span style="opacity: 0">、</span></div>
            </div>
          </div>
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
        <Share href="https://udn.com/newmedia/2019/global_energy_transition/The_Netherlands/"/>
        <p><br></p>
        <p><br></p>
        <div class="logo-container">
          <a href="https://udn.com/news/index" target="_blank" name="聯合新聞網" @click="sendLogoGA('.com')">
            <img :src="require('./assets/logo/udn.svg')" alt="聯合新聞網" >
          </a>
          <a href="https://vision.udn.com/index.html" target="_blank" name="願景工程" @click="sendLogoGA('vision')">
            <img :src="require('./assets/logo/vision.svg')" alt="願景工程">
          </a>
          <a href="https://www.facebook.com/udnNewMediaLab/" target="_blank" name="新媒體中心" @click="sendLogoGA('newmedia')">
            <img :src="require('./assets/logo/nm.svg')" alt="新媒體中心" @click="sendLogoGA('newmedia')">
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
          <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/The_Netherlands/"/>
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

import Anchor from './components/Anchor.vue'
import GradientConnection from './components/GradientConnection.vue'
import HandDrawn from './components/HandDrawn.vue'
import FBComment from './components/FBComment.vue'
import Foot from './components/Foot.vue'
import NextSection from './components/NextSection.vue'
import RelatedSection from './components/RelatedSection.vue'
import Share from './components/Share.vue'
import Question from './components/Question.vue'
import Youtube from './components/Youtube.vue'

export default {
  name: 'app',
  components: {
    Anchor,
    HandDrawn,
    FBComment,
    Foot,
    GradientConnection,
    NextSection,
    RelatedSection,
    Share,
    Question,
    Youtube,
  },
  data() {
    return {
      textHighlightFlag_1: false,
      textHighlightFlag_2: false,
      sectionCoverFlag_video: false,
      sectionCoverFlag_2: false,
      sectionCoverFlag_3: false,
      sectionCoverFlag_4: false,
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
      const scoverPostition_2 = document.getElementById('section-cover-2').getBoundingClientRect();
      const scoverPostition_3 = document.getElementById('section-cover-3').getBoundingClientRect();
      const scoverPostition_4 = document.getElementById('section-cover-4').getBoundingClientRect();
      const scoverPostition_5 = document.getElementById('section-cover-5').getBoundingClientRect();
      const scoverPostition_6 = document.getElementById('section-cover-6').getBoundingClientRect();
      const textHighlightPosition_1 = document.getElementById('text-highlight-1').getBoundingClientRect();
      const textHighlightPosition_2 = document.getElementById('text-highlight-2').getBoundingClientRect();

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

      // section-cover-4
      if (
        scoverPostition_4.top < 0 &&
        scoverPostition_4.bottom > 0
      ) this.sectionCoverFlag_4 = true;
      else this.sectionCoverFlag_4 = false;

      // section-cover-5
      if (
        scoverPostition_5.top < 0 &&
        scoverPostition_5.bottom > 0
      ) this.sectionCoverFlag_5 = true;
      else this.sectionCoverFlag_5 = false;

      // section-cover-6
      if (
        scoverPostition_6.top < 0 &&
        scoverPostition_6.bottom > 0
      ) this.sectionCoverFlag_6 = true;
      else this.sectionCoverFlag_6 = false;

      // text highlihgt 1 event.
      if ( textHighlightPosition_1.top < window.innerHeight * 0.5 ) this.textHighlightFlag_1 = true;
      // text highlihgt 2 event.
      if ( textHighlightPosition_2.top < window.innerHeight * 0.5 ) this.textHighlightFlag_2 = true;
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
    text-align: justify;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      font-size: 20px;
      line-height: 1.7;
    }
    @media only screen and (min-width: 1025px) {
      font-size: 21px;
      line-height: 1.45;
    }
  }
  h3 {
    text-align: left;
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
        overflow: hidden;
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
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_cover_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_cover_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_cover.jpg');
        }
      }
      .section-cover-2 {
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_image01_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_image01_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_image01.jpg');
        }
      }
      .section-cover-3 {
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_image02_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_image02_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_image02.jpg');
        }
      }
      .section-cover-4 {
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_image03_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_image03_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_image03.jpg');
        }
      }
      .section-cover-5 {
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_image04_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_image04_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_image04.jpg');
        }
      }
      .section-cover-6 {
        background-image: url('./assets/mob/global_energy_transition_The_Netherlands_image05_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_The_Netherlands_image05_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_The_Netherlands_image05.jpg');
        }
      }
    }
    .section-cover-description {
      font-size: 15px;
      margin-bottom: 50px;
      padding-top: 5px;
      text-align: justify;
      line-height: 1.33;
      @media only screen and (min-width: 769px) {
        font-size: 18px;
      }
    }
    .green-title {
      display: inline-block;
      text-align: center;
      color: #1eee78;
      line-height: 1.33;
      border-bottom: solid 1px #1eee78;
      font-size: 18px;
      @media only screen and (min-width: 769px) {
        font-size: 21px;
      }
    }
  }
  .content {
    position: relative;
    margin: 0 auto;
    text-align: center;
    padding: 20px 20px;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      padding: 20px calc(50% - 320px);
    }
    @media only screen and (min-width: 1025px) {
      padding: 20px calc(50% - 440px);
    }
    .image-wrapper {
      img {
        width: 100%;
        margin: 5px 0;
        @media only screen and (min-width: 768px) {
          width: 100%;
          &:first-child {
            padding-right: 5px;
          }
          &:last-child {
            padding-left: 5px;
          }
        }
      }
    }
    .image-wrapper-column-2 {
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
    }
    .image-description {
      color: #5a5a5a;
      font-size: 15px;
      text-align: justify;
    }
  }
  .padding-top-none {
    padding-top: 0;
  }
  .black-bg {
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
    text-align: left;
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
          white-space: nowrap;
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
        width: 70%;
        padding: 0 10px 0 0px;
        @media only screen and (max-width: 320px) {
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
          white-space: nowrap;
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
