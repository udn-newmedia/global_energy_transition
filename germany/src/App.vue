<template>
  <div id="app">
    <HeadBar page="Germany"/>
    <Cover :frogFlag="frogFlag" />
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
    <Anchor :currentPage="2" :anchorFixedFlag="anchorFixedFlag"/>
    <section id="article" class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_1,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_Germany_title.svg')" alt="德國能源轉型">
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
        <h3 class="green-title">德國的綠能奇蹟</h3>
        <p><br></p>
        <p>2019年初，德國再生能源的發電佔比已達40%，將超越傳統發電，而德國政府更計劃在2030年，將此佔比提升至65%。為力拼全力減碳，德國計劃於2022年關閉所有核電廠，該國「燃煤退場委員會」也決議在2038年前全面棄煤，關閉全國84座燃煤火力發電廠。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <HandDrawn subTitle="德國發電結構"/>
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
              'https://p3.udn.com.tw/global_energy_transition/germany/longform_Germany_m2.mp4' :
              'https://p3.udn.com.tw/global_energy_transition/germany/longform_Germany_pc.mp4'
            "
            :poster="
              require(isMob ?
              './assets/mob/longform_Germany_post_m.jpg' :
              './assets/pc/longform_Germany_post_pc.jpg'
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
        <p id="text-highlight-1">燃煤會惡化空氣，還會增加排碳量，造成地球暖化，不過，<mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-white': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_1,
            }"
          >德國一個反煤、推動再生能源地方化的公民團體「柏林人能源圓桌（Berliner Energietish）」提倡，燃煤可能還會壞了德國的啤酒，</mark>對於熱愛啤酒的德國人，這件事情更加無法接受。
        </p>
        <p><br></p>
        <p>能源轉型的過程之中，民眾的參與與支持非常重要。德國推動2038年非煤家園、2050年完全使用綠能，除了政府訂定政策目標之外，更多是由微小的個人齊聚成的集體力量。柏林人能源圓桌每個月固定在柏林發起一場城市能源導覽之旅，喊出「別讓燃煤壞了德國啤酒」的口號，導覽目的是要讓民眾了解能源的重要性，對燃煤電廠更加同仇敵愾，並透過增加民眾參與，推動成功的能源轉型。</p>
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
            <div class="section-cover-description">柏林人能源圓桌提倡，燃煤可能會壞了德國啤酒。記者余承翰／攝影</div>
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
        <h3>開採燃煤讓水變差<br>釀出來的啤酒也會不好喝</h3>
        <p><br></p>
        <p>2019年8月11日，德國正值炎熱的大晴天，藍天白雲愜意的星期天下午，德國國會大廈旁，下午1點50分，柏林人能源圓桌城市能源導覽員耶斯馬丁羅德（Jens Martin Rode） 在這邊等待即將參加城市能源導覽的報名者，近2點，陸陸續續來了6個報名參加者，參加者有年長者、也有20幾歲的年輕人，年齡層很廣。</p>
        <p><br></p>
        <p>城市能源導覽從德國國會大廈旁的施普雷河畔開始，再前往國會大廈旁的草皮，隨後穿過歐洲被害猶太人紀念碑走到一座東德的公民住宅公寓（Plattenbau）、再到柏林舊電廠，最後再到德國第一個發電廠場址，導覽員在行程中解說各種德國柏林發展再生能源的可能性，以及柏林的能源現況，包括太陽能所佔的比率不到百分之一、運輸節能和電動車的重要性，以及老屋改造成節能屋所面臨的困境等。</p>
        <p><br></p>
        <p>柏林人能源圓桌也把一張張「別讓啤酒加鹽（Lasst Euch Das bier nicht versalzen）」的杯墊送給參加的民眾，讓民眾對於燃煤的壞處更有感，也因此對燃煤更反感。</p>
        <p><br></p>
        <p><br></p>
      </div>
      <div class="image-wrapper">
        <img
          :src="require(isMob ? './assets/mob/global_energy_transition_Germany_artical_image01_m.jpg' : './assets/pc/global_energy_transition_Germany_artical_image01.jpg')"
          alt="德國能源轉型"
        >
        <div class="image-description">柏林人能源圓桌特別製作「別讓啤酒加鹽」的杯墊。記者余承翰／攝影</div>
      </div>
      <div class="content gray-bg padding-top-none">
        <p><br></p>
        <p><br></p>
        <p id="text-highlight-2">
          羅德說，以前東德有一個很大的褐煤場，現在這個煤場幾乎已經變成月球表面，呈現一片荒蕪的樣子，可是還是一直往下開採，地層被翻來覆去，使得地下水變得很混濁，這個地下水流到人工運河，<mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-black': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_2,
            }"
          >預期未來10到30年再這樣開採下去的話，柏林的水一定會變差，變差的水，釀出來的啤酒也會不好喝。</mark>
        </p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <h3>柏林人：拿回發電自主權</h3>
        <p><br></p>
        <p>羅德指出，柏林人能源圓桌在2013年曾舉辦一次公民投票，要求瑞典設置在柏林的的燃煤大廠瑞典大瀑布電力集團（Vattenfall）在結束發電執照之後，就必須退出柏林，讓柏林的供電重新回到柏林人手裡，也讓發電利潤回到公民身上。 不過，當時參與公投的民眾太少，因此公投沒有成功。</p>
        <p><br></p>
        <p>最後，柏林政府在公民的壓力以及環境趨勢的考量之下，未再與大瀑布電力集團簽下20年的合約，這件事也讓羅德等夥伴從中學到公民參與的重要性。</p>
        <p><br></p>
        <p><br></p>
        <div class="image-wrapper-column-2">
          <img
            :src="require(isMob ? './assets/mob/global_energy_transition_Germany_artical_image02_m.jpg' : './assets/pc/global_energy_transition_Germany_artical_image02.jpg')"
            alt="德國能源轉型"
          >
          <img
            :src="require(isMob ? './assets/mob/global_energy_transition_Germany_artical_image03_m.jpg' : './assets/pc/global_energy_transition_Germany_artical_image03.jpg')"
            alt="德國能源轉型"
          >
          <div class="image-description">導覽員耶斯馬丁羅德向民眾介紹能源轉型的重要性。記者余承翰／攝影</div>
        </div>
        <p><br></p>
        <p><br></p>
        <p id="text-highlight-3">
          <mark
            :class="{
              'text-highlight-ie': isIE,
              'text-highlight': !isIE ? true : false,
              'text-highlight-black': !isIE ? true : false,
              'text-highlight-animate': !isIE && textHighlightFlag_3,
            }"
          >過去，德國把燃煤電廠趕出城市，現在則要讓再生能源在城市長出來。德國預計在2050年全面使用綠能，策略是在城市使用太陽能、風能、生質能等。</mark>
        </p>
        <p><br></p>
        <p>羅德表示，現在柏林的城市產電能力還很小、很低弱，但希望未來，柏林不只是讓燃煤退場，還要全部用再生能源；此外，也要把仍由跨國企業掌握的發電、供電權拿回柏林人手中，分散式的讓公民參與，讓公民獲得發電利潤，進而可以跟大型發電廠競爭。</p>
        <p><br></p>
        <p>從德國人最重視的啤酒出發，柏林人能源圓桌要讓民眾更了解能源，進而促進民眾選擇綠電供應商，用公民的力量合力推動能源轉型。</p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
        <p><br></p>
      </div>
      <NextSection
        :directInfo="{
          'prev': {
            'title': '南韓',
            'url': 'South_Korea/#article',
            'description': '南韓再生能源中心落腳新萬金',
          },
          'next': {
            'title': '荷蘭',
            'url': 'The_Netherlands/#article',
            'description': '荷蘭用風力開火車',
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
        <!-- <Share href="https://udn.com/newmedia/2019/global_energy_transition/Germany/"/> -->
        <Share href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/Germany/"/>
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
          <!-- <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/Germany/"/> -->
          <FBComment href="http://nmdap.udn.com.tw/newmedia/2019/global_energy_transition/Germany/"/>
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
      textHighlightFlag_2: false,
      textHighlightFlag_3: false,
      sectionCoverFlag_video: false,
      sectionCoverFlag_1: false,
      sectionCoverFlag_2: false,
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
      const textHighlightPosition_1 = document.getElementById('text-highlight-1').getBoundingClientRect();
      const textHighlightPosition_2 = document.getElementById('text-highlight-2').getBoundingClientRect();
      const textHighlightPosition_3 = document.getElementById('text-highlight-3').getBoundingClientRect();

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

      // cover text highlihgt event.
      if ( coverPostition.top < window.innerHeight * 0.5 ) this.coverHighlightFlag = true;
      // text highlihgt 1 event.
      if ( textHighlightPosition_1.top < window.innerHeight * 0.5 ) this.textHighlightFlag_1 = true;
      // text highlihgt 2 event.
      if ( textHighlightPosition_2.top < window.innerHeight * 0.5 ) this.textHighlightFlag_2 = true;
      // text highlihgt 3 event.
      if ( textHighlightPosition_3.top < window.innerHeight * 0.5 ) this.textHighlightFlag_3 = true;

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
  background-image: url('./assets/mob/global_energy_transition_Germany_cover_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_Germany_cover_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_Germany_cover.jpg');
  }
}
.section-cover-2 {
  background-image: url('./assets/mob/global_energy_transition_Germany_image01_m.jpg');
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    background-image: url('./assets/pad/global_energy_transition_Germany_image01_pad.jpg');
  }
  @media only screen and (min-width: 1025px)  {
    background-image: url('./assets/pc/global_energy_transition_Germany_image01.jpg');
  }
}
.section-cover img {
  width: 60px !important;
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    width: 100px !important;
  }
  @media only screen and (min-width: 1025px)  {
    width: 105px !important;
  }
}
</style>
