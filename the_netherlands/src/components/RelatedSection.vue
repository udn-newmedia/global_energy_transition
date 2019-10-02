<template>
  <div class="related-section-container">
    <div v-if="isMob" class="related-section related-section-mob">
      <div class="related-title-container">
        <img :src="require('../assets/title/global_energy_transition_The_Netherlands_title_read.svg')" alt="荷蘭能源轉型列報導">
      </div>
      <Slick
        ref="slick"
        :options="{
          dots: true,
          infinite: false,
          speed: 200,
          slidesToShow: 1,
          slidesToScroll: 1,
          centerMode: true,
          centerPadding: '15vw',
          arrows: false,
          initialSlide: 1,
        }"
      >
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R1')"
        >
          <img :src="require('../assets/read/read_Netherlands_01.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">太陽能電動車：白天駕駛、晚上充電到你家</div>
        </a>
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R2')"
        >
          <img :src="require('../assets/read/read_Netherlands_02.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">HyGear氫氣做為未來新能源，荷蘭準備好了</div>
        </a>
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R3')"
        >
          <img :src="require('../assets/read/read_Netherlands_03.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">永續城市解決方案的先行者：台夫特理工大學Green Village計畫</div>
        </a>
        </Slick>
    </div>
    <div v-else class="related-section related-section-pc">
      <div class="related-title-container">
        <img :src="require('../assets/title/global_energy_transition_The_Netherlands_title_read.svg')" alt="荷蘭能源轉型列報導轉型列報導">        
      </div>
      <div class="related-article-container">
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R1')"
        >
          <img :src="require('../assets/read/read_Netherlands_01.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">日本的兩難：擁核還是廢核？</div>
        </a>
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R2')"
        >
          <img :src="require('../assets/read/read_Netherlands_02.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">日企打造智慧城，追求能源零消耗</div>
        </a>
        <a
          href=""
          name="荷蘭能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('R3')"
        >
          <img :src="require('../assets/read/read_Netherlands_03.jpg')" alt="荷蘭能源轉型列報導">
          <div class="related-article-name">日企打造智慧城，追求能源零消耗</div>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

import Slick from 'vue-slick';
import '../../node_modules/slick-carousel/slick/slick.css';
import '../../node_modules/slick-carousel/slick/slick-theme.css';

export default {
  name: 'RelatedSection',
  components: {
    Slick,
  },
  computed: {
    isMob() {
      return window.innerWidth < 768 ? true : false;
    },
  },
  methods: {
    sendRelatedGA(index) {
      window.ga("newmedia.send", {
        "hitType": "event",
        "eventCategory": "related",
        "eventAction": "click",
        "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [" + index + "]",
      });
    },
  },
};
</script>

<style lang="scss">
.slick-slide {
  display: none;
  float: left;
  height: 100%;
  min-height: 1px;
  outline: none !important;
}
.slick-dots {
  list-style: none;
  button::before {
    color: #fff !important;
  }
}

.related-section-container {
  position: relative;
  .related-section {
    position: relative;
    width: 100%;
    height: 980px;
    background-size: cover;
    @media only screen and (min-width: 1025px) {
      display: flex;
      justify-content: center;
    }
    .related-title-container {
      position: relative;
      width: 100%;
      height: 60%;
      display: flex;
      justify-content: center;
      align-items: center;
      @media only screen and (min-width: 768px) and (max-width: 1024px) {
        height: 50%;
      }
      @media only screen and (min-width: 1025px) {
        width: auto;
        height: 100%;
        margin-top: 20vh;
        justify-content: flex-end;
        align-items: flex-start;

      }
    }
    .related-article-container {
      position: relative;
      width: 100%;
      height: 40%;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      @media only screen and (min-width: 768px) and (max-width: 1024px) {
        height: 50%;
      }
      @media only screen and (min-width: 1025px) {
        width: auto;
        height: 100%;
        margin-top: 37vh;
        padding-left: 50px;
        justify-content: flex-start;
      }
    }
    .related-article {
      position: relative;
      width: 100%;
      padding: 10px;
      margin-bottom: 30px;
      @media only screen and (min-width: 768px) {
        width: 200px;
        margin: 0 10px;
        padding: 0;
      }
      img {
        position: relative;
        width: 100%; 
      }
      .related-article-name {
        margin-top: 5px;
        font-size: 15px;
        line-height: 1.67;
        color: #ffffff;
      }
    }
  }
  .related-section-mob {
    background-image: url('../assets/mob/global_energy_transition_The_Netherlands_backgrornd_image_m.jpg');
    background-position: 75% 0;
    @media only screen and (min-width: 768px) {
      background-image: url('../assets/pad/global_energy_transition_The_Netherlands_backgrornd_image_pad.jpg');
      background-position: 95% 0;
    }
  }
  .related-section-pc {
    background-image: url('../assets/pc/global_energy_transition_The_Netherlands_backgrornd_image.jpg');
  }
}
</style>