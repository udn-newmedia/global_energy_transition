<template>
  <div id="app">
    <HeadBar page="South_Korea"/>
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
          能源轉型確實是場長期戰役。在台灣，蔡英文總統自上任來，積極推動非核、減煤目標，<mark
            id="cover-arrow-start"
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && coverHighlightFlag,
            }"
          >並計劃在2025年，再生能源發電佔比達20%</mark>，但節節高漲的電費、供電問題卻也隨之而來；放眼全球，加速老舊燃煤電廠退役、發展綠能產業正成國際趨勢，不過各國也面臨扼制綠能產業發展的法規、過時的電力產業結構等阻礙。
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
    <Anchor :currentPage="1" :anchorFixedFlag="anchorFixedFlag"/>
    <section id="article" class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_1,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_South_Korea_title.svg')" alt="南韓能源轉型">
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
        <h3 class="green-title">南韓的「脫核去煤」之路</h3>
        <p><br></p>
        <p>南韓總統文在寅於2017年上任後，即宣布走「脫核去煤」之路，積極發展再生能源，計劃在2031年前，把核電廠數量減至18座、將廠齡超過30年的老舊火力發電廠除役，同時把再生能源發電佔比提高至20%。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <HandDrawn subTitle="南韓發電結構"/>
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
              'https://p3.udn.com.tw/global_energy_transition/south_korea/korea_m.mp4' :
              'https://p3.udn.com.tw/global_energy_transition/south_korea/korea_pc.mp4'
            "
            :poster="
              require(isMob ?
              './assets/mob/korea_m_post.jpg' :
              './assets/pc/korea_pc_post.jpg'
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
        <p>南韓西岸全羅北道的新萬金有一道長33.9公里的世界最長人工海堤，其宏偉景象連在外太空也看得見，在南韓政府的規劃下，新萬金海堤內已變身409平方公里的填海造陸地區，而未來，該填海造陸地區還會再創一個世界之最──世界最大再生能源中心。</p>
        <p><br></p>
        <p id="text-highlight-1">
          「我們要在新萬金打造世界數一數二的太陽能和離岸風力發電設備，」<mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_1,
            }"
          >南韓總統文在寅於2017年上任後，誓言將廠齡超過30年的老舊火力發電廠除役，同時計劃在2030年，將再生能源在總發電量的佔比從目前的7%提高到20%</mark>，新萬金再生能源計畫正是此願景的關鍵一步。
        </p>
        <p><br></p>
        <p><br></p>
        <Youtube src="https://www.youtube.com/embed/mX-5aA7IEIE"></Youtube>
        <p><br></p>
        <p><br></p>
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
        >
          <GradientConnection :inner="true" :bottom="true"/>
          <div class="content">
            <div class="section-cover-description">全羅北道的群山市已有南韓最大的水上太陽能發電廠。圖／KOEN提供</div>
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
            <div class="section-cover-description">全羅北道的群山市已有南韓最大的水上太陽能發電廠。記者鄭超文／攝影</div>
          </div>
        </div>
      </div>
      <div class="content gray-bg">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3>新萬金將帶來20億韓元經濟效益</h3>
        <p><br></p>
        <p>「小心！有蜘蛛網！」《聯合報》採訪團隊實際走訪位新萬金將規劃為太陽能發電廠的預定地，只見該處仍是滿地紅土，雜草已長到一人高，方圓數公里內均未見人跡，若未多加留意，每走幾步路還會撞上大片蜘蛛網，但若隔幾年再訪這塊土地，眼前的荒煙漫草景象將會換成上萬片太陽能板及繁榮的再生能源產業聚落，總發電裝置容量上看2.6GW。</p>
        <p><br></p>
        <p>「新萬金的面積太大了，很難同時開發所有用地，」新萬金面積相當於首爾市三分之二，新萬金開發公司再生能源部門主任金玉喆拿著開發計畫圖，和採訪團隊介紹對該地的規劃。</p>
        <p><br></p>
        <p>新萬金開發計畫將先從人工海堤附近開始建設，再逐漸往內地拓展，計劃斥資6.5兆韓元，落成後將帶來逾20兆韓元的經濟效益。新萬金開發公司隸屬南韓國土交通部，與同樣隸屬南韓政府的新萬金開發廳一同負責此計畫的招商、投資獎勵等業務。</p>
        <p><br></p>
        <p>新萬金附近原是小漁村，居民大多靠海吃飯、從事捕魚業，而根據新萬金開發廳，新萬金再生能源中心完工後，預計將吸引100家再生能源廠商進駐，為當地帶來10萬個工作機會。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
      <div id="section-cover-4" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_4,
            'section-cover-4': true,
          }"
        >
          <GradientConnection :inner="true" :bottom="true"/>
          <div class="content">
            <div class="section-cover-description">新萬金的太陽能發電廠預定地目前仍是滿地紅土。記者鄭超文／攝影</div>
          </div>
        </div>
      </div>
      <div class="content gray-bg padding-bottom-none">
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3>鼓勵居民投資再生能源<br>不如讓他們能繼續捕魚</h3>
        <p><br></p>
        <p>南韓政府於1990年代開始規劃開發新萬金，當時曾遭到許多民眾反對，環保人士甚至發動歷時65天、步行305公里的「三步一拜」遊行，以苦行的抗議方式呼籲政府不要為了開發，破壞新萬金潮間帶的生態環境。</p>
        <p><br></p>
        <p>「如果沒有開發，新萬金附近捕魚業原本年產值達9,000億韓元、還有觀光業，現在全部都沒了，」全北大學地球與環境科學教授吳昌桓長期關注環保議題，過去也不贊成政府開發新萬金。</p>
        <p><br></p>
        <p>不過，全羅北道居民的生計問題讓吳昌桓開始有了不同想法，由於當地居民大多以海為生，吳昌桓認為，若要促進當地就業，勢必得開發生態環境，現在，他主張有條件的開發，要求政府「在開發的同時也要能復原生態」。</p>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
    <section class="gray-bg">
      <div class="image-wrapper gray-bg">
        <img
          :src="require(isMob ? './assets/mob/global_energy_transition_South_Korea_artical_image01_m.jpg' : './assets/pc/global_energy_transition_South_Korea_artical_image01.jpg')"
          alt="韓國能源轉型"
        >
        <div class="image-description">新萬金附近捕魚業原本年產值達9,000億韓元，但新萬金海堤落成後，對當地捕魚業、水產造成極大傷害。記者鄭超文／攝影</div>
      </div>
      <div class="content gray-bg padding-top-none padding-bottom-none">
        <p><br></p>
        <p><br></p>
        <p>吳昌桓目前擔任新萬金再生能源公私協調委員會共同會長，該委員會於2018年底成立，成員包含當地漁民、學者、政府代表等，專門協調當地漁民與政府間的歧見。</p>
        <p><br></p>
        <p>在委員會的協調下，全羅北道的居民將能優先投資、參與建設新萬金再生能源計畫。然而，吳昌桓也表示，參與再生能源建設的成本很高，光是1MW的發電容量就得砸下20億韓元，全羅北道有資本能實際參與建設的公司不多。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <div class="image-wrapper">
        <img
          :src="require(isMob ? './assets/mob/global_energy_transition_South_Korea_artical_image02_m.jpg' : './assets/pc/global_energy_transition_South_Korea_artical_image02.jpg')"
          alt="韓國能源轉型"
        >
        <div class="image-description">全北大學地球與環境科學教授吳昌桓長期關注環保議題，過去也不贊成政府開發新萬金。記者鄭超文／攝影</div>
      </div>
      <div class="content gray-bg padding-top-none">
        <p><br></p>
        <p><br></p>
        <p>「讓當地居民投資再生能源計畫，不如讓他們能繼續捕魚」，吳昌桓指出，新萬金的海堤於2010年落成後，當地的海水遭到淡化，對捕魚業、水產造成極大傷害，參與協調委員會的漁民代表因此極力主張將新萬金的海堤部分打通，讓新萬金附近的海水能流通。</p>
        <p><br></p>
        <p>「你們知道嗎？我的專業領域其實是地球科學，不是再生能源，」採訪接近尾聲，吳昌桓秀出他擔任新萬金計畫協調者所研讀的各項報告，笑稱自己現在都快成為再生能源領域的專家了。</p>
        <p><br></p>
        <p>儘管過程艱辛，但為了能讓新萬金開發計畫也能兼顧生態保育及居民利益，吳昌桓仍繼續為一個更「永續發展」的新萬金奔走。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
      <NextSection
        :directInfo="{
          'prev': {
            'title': '日本',
            'url': 'Japan/#article',
            'description': '福島的重生：從核災縣變綠能大縣',
          },
          'next': {
            'title': '德國',
            'url': 'Germany/#article',
            'description': '別讓燃煤壞了啤酒',
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
        <!-- <Share href="https://udn.com/newmedia/2019/global_energy_transition/South_Korea/"/> -->
        <Share href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/South_Korea/"/>
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
          <!-- <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/South_Korea/"/> -->
          <FBComment href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/South_Korea/"/>
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
import InApp from 'detect-inapp';

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
      const anchorPosition = document.getElementById('anchor').getBoundingClientRect();
      const coverPostition = document.getElementById('cover-highlight-text').getBoundingClientRect();
      const scoverPostition_video = document.getElementById('section-cover-video').getBoundingClientRect();
      const scoverPostition_1 = document.getElementById('section-cover-1').getBoundingClientRect();
      const scoverPostition_2 = document.getElementById('section-cover-2').getBoundingClientRect();
      const scoverPostition_3 = document.getElementById('section-cover-3').getBoundingClientRect();
      const scoverPostition_4 = document.getElementById('section-cover-4').getBoundingClientRect();
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

      // section-cover-4
      if (
        scoverPostition_4.top < 0 &&
        scoverPostition_4.bottom > 0
      ) this.sectionCoverFlag_4 = true;
      else this.sectionCoverFlag_4 = false;

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
  created() {
    // 處理inapp browser window.innerWidth問題
    (function() {
      const inapp = new InApp(navigator.userAgent || navigator.vendor || window.opera);
      let currentWidth = window.innerWidth;
      let executeCount = 0;
      if (inapp.isInApp) {
        const inappWidthListener = setInterval(() => {
          executeCount++;
          if (window.innerWidth !== currentWidth) {
            window.location.reload();
            currentWidth = window.innerWidth;
          }
          if (executeCount > 10) {
            clearInterval(inappWidthListener);
          }
        }, 100);
      }
    })();
  },
  destroyed() {
    window.addEventListener('scroll', this.handleScroll);
  },
};
</script>

<style lang="scss">
@import '@generals/style.scss';
.section-cover-1 {
  background-image: url('./assets/mob/global_energy_transition_South_Korea_cover_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_South_Korea_cover_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_South_Korea_cover.jpg');
  }
}
.section-cover-2 {
  background-image: url('./assets/mob/global_energy_transition_South_Korea_image01_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_South_Korea_image01_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_South_Korea_image01.jpg');
  }
}
.section-cover-3 {
  background-image: url('./assets/mob/global_energy_transition_South_Korea_image02_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_South_Korea_image02_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_South_Korea_image02.jpg');
  }
}
.section-cover-4 {
  background-image: url('./assets/mob/global_energy_transition_South_Korea_image03_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_South_Korea_image03_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_South_Korea_image03.jpg');
  }
}
</style>
