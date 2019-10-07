<template>
  <div id="app">
    <HeadBar page="United_Kingdom"/>
    <Cover :frogFlag="frogFlag"/>
    <GradientConnection/>
    <div class="cover-context black-bg">
      <div class="content content-thin">
        <ArticleArrow
          v-if="!isIE"
          startPosition="cover-highlight-text"
          endPosition="cover-arrow-end"
          leftPosition="cover-arrow-start"
          :coverHighlightFlag="coverHighlightFlag"
        />
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p>儘管全球的減碳、廢核聲量正高漲，各國政府、民間團體在推動能源轉型時，卻仍面臨各式難題。</p>
        <p><br></p>
        <p>「能源轉型就像革命一樣，」一位推動南韓社區能源轉型的市民想到自己曾面臨的阻礙，不禁搖了搖頭。</p>
        <p><br></p>
        <p id="cover-highlight-text">
          能源轉型確實是場長期戰役。在台灣，蔡英文總統自上任來，積極推動非核、減煤目標，
          <mark
            id="cover-arrow-start"
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && coverHighlightFlag,
            }"
          >
            並計劃在2025年，再生能源發電佔比達20%
          </mark>
          ，但節節高漲的電費、供電問題卻也隨之而來；放眼全球，加速老舊燃煤電廠退役、發展綠能產業正成國際趨勢，不過各國也面臨扼制綠能產業發展的法規、過時的電力產業結構等阻礙。
        </p>
        <p><br></p>
        <p><br></p>
        <div id="cover-arrow-end"/>
        <div class="energy-chart-wrapper">
          <img
            class="energy-chart-title"
            :src="require('@generals/assets/title/title_2018_tw.svg')"
            alt="2018台灣發電結構"
          >
          <img
            class="energy-chart"
            :src="require(
              isMob ?
              '@generals/assets/chart/chart_2018_tw_m.svg' :
              '@generals/assets/chart/chart_2018_tw_pc.svg'
            )"
            alt="2018台灣發電結構"
          >
        </div>
        <div class="energy-chart-wrapper">
          <img
            class="energy-chart-title"
            :src="require('@generals/assets/title/title_2018_word.svg')"
            alt="2018全球發電結構"
          >
          <img
            class="energy-chart"          
            :src="require(
              isMob ?
              '@generals/assets/chart/chart_2018_word_m.svg' :
              '@generals/assets/chart/chart_2018_word_pc.svg'
            )"
            alt="2018全球發電結構"
          >
        </div>
        <p><br></p>
        <p>當能源轉型已勢在必行，各國政府如何協助燃煤產業轉型、催生再生能源產業，民間團體又如何將節能與公民發電落實於日常生活中？</p>
        <p><br></p>
        <p>《聯合報》採訪團隊實際走訪英國、德國、荷蘭、日本、南韓，紀錄這5個國家的能源轉型之路，希望借鏡國外經驗，讓台灣的能源轉型之路走得更順、走得更遠。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
    </div>
    <Anchor :currentPage="4" :anchorFixedFlag="anchorFixedFlag"/>
    <section id="article" class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_1,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_United_Kingdom_titile.svg')" alt="英國能源轉型">
        </div>
      </div>
    </section>
    <GradientConnection/>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3 class="green-title">英國燃煤歸零倒數中</h3>
        <p><br></p>
        <p>英國是世界上第一個燃煤國家，而為對抗氣候變遷，該國今年通過氣候變遷法修正，將2050年底之前達到零碳排目標納進法律，成為第一個將零碳目標入法的國家。英國也計劃在2040年禁售燃油車、2050年碳排歸零。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <HandDrawn subTitle="英國發電結構"/>
      <p><br></p>
      <p><br></p>
      <p><br></p>
      <p><br></p>
    </section>
    <section class="black-bg">
      <GradientConnection :reverse="true" :inner="true" :top="true" :upper="true"/>
      <div id="section-cover-video" class="section-cover-container section-cover-video">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_video,
          }"
        >
          <video
            id="video-1"
            :src="
              isMob ?
              'https://p3.udn.com.tw/global_energy_transition/uk/UK_m.mp4' :
              'https://p3.udn.com.tw/global_energy_transition/uk/UK_pc.mp4'
            "
            :poster="
              require(isMob ?
              './assets/mob/UK_post.jpg' :
              './assets/pc/UK_pc_post.jpg'
              )
            "
            webkit-playsinline
            playsinline
            preload="auto"
            paused
            muted
          />
        </div>
      </div>
    </section>
    <GradientConnection/>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p>8月位在英國倫敦東南方的布萊頓（Brighton）正值夏季觀光旺季，沙灘上一個個穿著比基尼、曬日光浴的遊客，正享受海風吹拂。過去，布萊頓已有賞豚、海釣等海上觀光之旅，現在又多了一種觀光行程─離岸風機之旅。</p>
        <p><br></p>
        <p id="text-highlight-1">英國預計在2025年前關閉最後一波燃煤電廠。<mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_1,
            }"
          >為完成減碳大業，英國正致力提升離岸風電發電量、核能佔比，除了離岸風電的發電量領先各國之外，在社區發展方面，也長出布萊頓這類地區創生的典範區域。</mark>
        </p>
        <p><br></p>
        <p>採訪團隊自倫敦出發，一進到布萊頓市區，遠望就看到一座座白色風機矗立海上，與海景相互輝映。</p>
        <p><br></p>
        <p>這片離岸風電於5年前開始發電，英商海德益公司（ODE）再生能源專案經理馬克伯朗（Mark BROWN）表示，這個離岸風電廠於2017年4月完成，目前共有116座風機，最大發電量是4億瓦特。</p>
        <p><br></p>
        <p>行至碼頭，我們踏上船長大衛羅斯（David Ross）的觀光船，預計進行一趟來回3小時的離岸風電之旅。當天雖然風感覺不大，但出發時，天色看來有些陰暗，幸好，大衛點點頭表示，今天的風況看來還可以，出海應是沒問題。</p>
        <p><br></p>
        <p><br></p>
        <Youtube src="https://www.youtube.com/embed/xFZkhwQD4kE"></Youtube>
        <p><br></p>
        <p><br></p>
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
            <div class="section-cover-description">英商海德益在布萊頓外海的離岸風場。記者余承翰／攝影</div>
          </div>
        </div>
      </div>
    </section>
    <section class="white-bg">
      <div class="content gray-bg">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3>新興離岸風機之旅<br>近距離看巨型風機</h3>
        <p><br></p>
        <p>上了船後，大衛先向大家說明出海注意事項，首先因為海上浪大，他先向大家示範「可能站不穩」的狀況，包括發生緊急事件時，要立刻穿著救生衣，此外，因為海浪太大，還可能被海水噴到全身濕，船上提供防水衣，供遊客穿著。</p>
        <p><br></p>
        <p>果不其然，才剛出海不久，船上的遊客，就幾乎無法好好站穩，觀光船如海盜船在海上搖搖盪盪、忽上忽下，過不一會兒，一陣海浪打上來，一群遊客大叫，頭髮、衣服全濕透了。</p>
        <p><br></p>
        <p>隨著海浪飄漂浮浮，風機的景象也越來越接近，隨後，佇立在眼前的是16層樓高的風機，葉扇就在眼前繞轉，數十根風機排排站，十分壯觀。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="black-bg">
      <div id="section-cover-3" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_3,
            'section-cover-3': true,
          }"
        >
          <GradientConnection :inner="true" :bottom="true"/>
          <div class="content">
            <div class="section-cover-description">在布萊頓外海的離岸風場變電中心，可見許多海鳥飛梭其上。記者余承翰／攝影</div>
          </div>
        </div>
      </div>
    </section>
    <section class="gray-bg">
      <div class="content gray-bg padding-bottom-none">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p>觀光船隨後繞行變電中心，可以看到許多海鳥飛梭其上，成為一個海鳥的海上臨時休憩站。</p>
        <p><br></p>
        <p>離岸風機之旅很夯，一趟35英鎊，出海前都要提早一個禮拜預約，有些人將離岸風機之旅當作生日之旅、畢業旅行，搭過一次，經驗難忘。</p>
        <p><br></p>
        <p>馬克伯朗表示，離岸風機之旅是當地人自行發展出來的遊程，公司也覺得是一種提昇多種地方創生結合的好方式。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3>風能觀光 在地人最好奇</h3>
        <p><br></p>
        <p>目前布萊頓有4家風機觀光業者，業者大衛說，參加的人主要是當地還有附近的遊客，這些居民可以說是「看著風機被建造起來」，因此對於風機特感好奇，想近距離看看風機到底是怎麼回事。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <div class="image-wrapper">
        <img
          :src="require(isMob ? './assets/mob/global_energy_transition_United_Kingdom_artical_image_m.jpg' : './assets/pc/global_energy_transition_United_Kingdom_artical_image.jpg')"
          alt="離岸風機觀光船船長大衛羅斯。記者余承翰／攝影"
        >
        <div class="image-description">離岸風機觀光船船長大衛羅斯。記者余承翰／攝影</div>
      </div>
      <div class="content gray-bg padding-top-none">
        <p><br></p>
        <p><br></p>
        <p>大衛自2015年開始風力發電旅遊行程，一天最多有兩到三趟旅程，他的船一艘最多可以坐63個人，但英國法規規定一次最多可以搭載12人，出海得看天候、風況，即使提早預約，也不一定能如期出海。</p>
        <p><br></p>
        <p>除了帶動觀光船的離岸風電遊程之外，離岸風機也讓原本就有的景點，更有看頭。搭上英國航空i360觀景塔，可以360度看到布萊頓的城市景觀並遠眺海景。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>

      </div>
      <NextSection
        :directInfo="{
          'prev': {
            'title': '荷蘭',
            'url': 'The_Netherlands/#article',
            'description': '荷蘭用風力開火車',
          },
          'next': {
            'title': '日本',
            'url': 'Japan/#article',
            'description': '福島的重生：從核災縣變綠能大縣',
          },
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
        <!-- <Share href="https://udn.com/newmedia/2019/global_energy_transition/United_Kingdom/"/> -->
        <Share href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/United_Kingdom/"/>
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
          <!-- <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/United_Kingdom/"/> -->
          <FBComment href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/United_Kingdom/"/>
        </div>
        <p><br></p>
        <p><br></p>
      </div>
    </div>
    <Foot/>
    <GoTop/>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

import Anchor from '@generals/components/Anchor.vue'
import ArticleArrow from '@generals/components/ArticleArrow.vue'
import Cover from '@generals/components/Cover.vue'
import GoTop from '@generals/components/GoTop.vue'
import GradientConnection from '@generals/components/GradientConnection.vue'
import FBComment from './components/FBComment.vue'
import Foot from '@generals/components/Foot.vue'
import HandDrawn from './components/HandDrawn.vue'
import HeadBar from '@generals/components/HeadBar.vue'
import NextSection from '@generals/components/NextSection.vue'
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
    GoTop,
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
      frogFlag: true,
      coverHighlightFlag: false,
      textHighlightFlag_1: false,
      sectionCoverFlag_video: false,
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
      const scoverPostition_video = document.getElementById('section-cover-video').getBoundingClientRect();
      const scoverPostition_1 = document.getElementById('section-cover-1').getBoundingClientRect();
      const scoverPostition_2 = document.getElementById('section-cover-2').getBoundingClientRect();
      const scoverPostition_3 = document.getElementById('section-cover-3').getBoundingClientRect();
      const textHighlightPosition_1 = document.getElementById('text-highlight-1').getBoundingClientRect();
      
      // anchor fixed event
      if (anchorPosition.top < 0) this.anchorFixedFlag = true;
      else this.anchorFixedFlag = false;
      // cover frog event
      if (
        window.pageYOffset < window.innerHeight * 2 &&
        window.pageYOffset >= -window.innerHeight * 0.5
      ) this.frogFlag = true;
      else this.frogFlag = false;

      // section-cover-video
      if (
        scoverPostition_video.top < 0 &&
        scoverPostition_video.bottom > -window.innerHeight * 0.5
      ) {
        this.sectionCoverFlag_video = true;
        document.getElementById('video-1').play();
      } else {
        this.sectionCoverFlag_video = false;
        document.getElementById('video-1').pause();
      }
      
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

      // cover text highlihgt event.
      if ( coverPostition.top < window.innerHeight * 0.5 ) this.coverHighlightFlag = true;
      // text highlihgt 1 event.
      if ( textHighlightPosition_1.top < window.innerHeight * 0.5 ) this.textHighlightFlag_1 = true;



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
@import '@generals/style.scss';
.section-cover-1 {
  background-image: url('./assets/mob/global_energy_transition_United_Kingdom_cover_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_United_Kingdom_cover_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_United_Kingdom_cover.jpg');
  }
}
.section-cover-2 {
  background-image: url('./assets/mob/global_energy_transition_United_Kingdom_image01_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_United_Kingdom_image01_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_United_Kingdom_image01.jpg');
  }
}
.section-cover-3 {
  background-image: url('./assets/mob/global_energy_transition_United_Kingdom_image02_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_United_Kingdom_image02_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_United_Kingdom_image02.jpg');
  }
}
.section-cover img {
  width: 100px !important;
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    width: 160px !important;
  }
  @media only screen and (min-width: 1025px)  {
    width: 180px !important;
  }
}
</style>
