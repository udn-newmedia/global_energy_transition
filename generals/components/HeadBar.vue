<template>
  <div class="head-bar-container">
    <div class="logo-wrapper" @click="sendLogoGA()">
      <a :href="homePath" target="_blank" name="udn-logo-button">
        <!-- <i class="udn-icon udn-icon-logo"/>
         -->
        <img :src="require('../assets/vision_project_logo.png')" alt="fb-icon">
      </a>
    </div>
    <div class="share-button-container">
      <button class="share-button" name="fb-button" @click="fbShare()">
        <img :src="require('../assets/fb.png')" alt="fb-icon">
      </button>
      <button class="share-button" name="line-button" @click="lineShare()">
        <img :src="require('../assets/line.png')" alt="line-icon">
      </button>
    </div>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

export default {
  name: 'HeadBar',
  props: {
    page: {
      type: String,
      require: true,
    },
  },
  data() {
    return {
      homePath: window.location.origin + '/newmedia/2019/global_energy_transition/'
    };
  },
  computed: {
    isMob() {
      return window.innerWidth <= 768 ? true : false;
    },
  },
  methods: {
    fbShare() {
      window.FB.ui(
        {
          method: 'share',
          href: this.homePath + this.page + '/',
        }, 
        // function(response) {}
      );
      window.ga('newmedia.send', {
        hitType: 'event',
        eventCategory: 'Share',
        eventAction: 'click',
        eventLabel: `[${Utils.detectPlatform()}] [${document.querySelector('title').innerHTML}] [特製fb icon] [Click_FB_top]`,
      });
    },
    lineShare() {
      if (Utils.detectMob()) {
        // 手機
        window.location.assign(`https://line.me/R/msg/text/?${document.querySelector('title').innerHTML}%0D%0A%0D%0A${document.querySelector('meta[property="og:description"]').content}%0D%0A%0D%0A${this.homePath + this.page + '/'}`);
      } else {
        window.open(`https://line.me/R/msg/text/?${document.querySelector('title').innerHTML}%0D%0A%0D%0A${document.querySelector('meta[property="og:description"]').content}%0D%0A%0D%0A`);
      }
      window.ga('newmedia.send', {
        hitType: 'event',
        eventCategory: 'Share',
        eventAction: 'click',
        eventLabel: `[${Utils.detectPlatform()}] [${document.querySelector('title').innerHTML}] [特製line icon] [Click_Line_top]`,
      });
    },
    sendLogoGA() {
      window.ga('newmedia.send', {
        hitType: 'event',
        eventCategory: 'logo',
        eventAction: 'click',
        eventLabel: `[${Utils.detectPlatform()}] [${document.querySelector('title').innerHTML}] [圓形logo點擊]`,
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.head-bar-container {
  position: fixed;
  z-index: 5000;
  top: 0;
  left: 0;
  width: 100%;
  height: 50px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  // background-image: linear-gradient(to top, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.64));
  a {
    text-decoration: none;
    color: inherit;
  }
  button {
    background-color: transparent;
    border: none;
  }
  .disabled {
    pointer-events: none;
    cursor: default;
  }
  .logo-wrapper {
    position: relative;
    // width: 30px;
    // height: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    // font-size: 30px;
    margin: 10px;
    @media only screen and (min-width: 1025px)  {
    }
    cursor: pointer;
    img {
      width: 130px;
      @media only screen and (min-width: 1025px)  {
        width: 160px;
        margin-top: 20px;
      }
    }
    i {
      color: #f1f1f1;
      transform: rotate(0deg);
      &:hover {
        transition: transform 288ms ease-in;
        transform: rotate(16deg);
      }
    }
  }
  .share-button-container {
    position: relative;
    margin: 0 5px;
    @media only screen and (min-width: 1025px)  {
      margin: 0 15px;
    }
    .share-button {
      position: relative;
      width: 30px;
      height: 30px;
      margin: 10px 5px;
      img {
        position: relative;
        width: 100%;
        height: 100%;
      }
    }
  }
}
</style>