<template>
  <div class="related-section-container">
    <div v-if="isMob" class="related-section related-section-mob">
      <div class="related-title-container">
        <img :src="require('../assets/title/global_energy_transition_title_read.svg')" alt="南韓能源轉型列報導">
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
          href="https://topic.udn.com/event/greenpowerpeople"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('綠能環境衝突')"
        >
          <img :src="require('../assets/read/read_uk_02.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">綠能環境衝突</div>
        </a>
        <a
          href="https://topic.udn.com/event/Hydrogenpower"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('社企新能源')"
        >
          <img :src="require('../assets/read/read_Netherlands_02.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">社企新能源</div>
        </a>
        <a
          href="https://topic.udn.com/event/globalnuclear"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('今夕核夕？')"
        >
          <img :src="require('../assets/read/read_jp_03.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">今夕核夕？</div>
        </a>
        </Slick>
    </div>
    <div v-else class="related-section related-section-pc">
      <div class="related-title-container">
        <img :src="require('../assets/title/global_energy_transition_title_read.svg')" alt="南韓能源轉型列報導轉型列報導">        
      </div>
      <div class="related-article-container">
        <a
          href="https://topic.udn.com/event/greenpowerpeople"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('綠能環境衝突')"
        >
          <img :src="require('../assets/read/read_uk_02.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">綠能環境衝突</div>
        </a>
        <a
          href="https://topic.udn.com/event/Hydrogenpower"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('社企新能源')"
        >
          <img :src="require('../assets/read/read_Netherlands_02.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">社企新能源</div>
        </a>
        <a
          href="https://topic.udn.com/event/globalnuclear"
          name="南韓能源轉型列報導"
          class="related-article"
          target="_blank"
          @click="sendRelatedGA('今夕核夕？')"
        >
          <img :src="require('../assets/read/read_jp_03.jpg')" alt="南韓能源轉型列報導">
          <div class="related-article-name">今夕核夕？</div>
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
    background-image: url('../assets/mob/global_energy_transition_South_Korea_background_image_m.jpg');
    background-position: 75% 0;
    @media only screen and (min-width: 768px) {
      background-image: url('../assets/pad/global_energy_transition_South_Korea_background_image_pad.jpg');
      background-position: 95% 0;
    }
  }
  .related-section-pc {
    background-image: url('../assets/pc/global_energy_transition_South_Korea_background_image.jpg');
  }
}
</style>