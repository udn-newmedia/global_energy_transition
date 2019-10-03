<template>
  <div class="go-top-container">
    <div
      :class="{
        'go-top': true,
        'go-top--active': scrollHalfFlag,
      }"
      v-scroll-to="'#app'"
      @click="sendGoTopGA()"
    >
      <img
        class="go_top_button"
        src="../assets/up.svg"
        alt="回到最上面"
      >
    </div>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';
import _throttle from 'lodash.throttle';

export default {
  name: 'GoTop',
  data() {
    return {
      pageTotalHeight: 0,
      scrollHalfFlag: false,
      currentProgress: 0,
    };
  },
  methods: {
    handleScroll: _throttle(function() {
      const currentH = window.pageYOffset;
      this.currentProgress = (currentH / this.pageTotalHeight) * 100;
      this.scrollHalfFlag = this.currentProgress > 50 ? true : false;
    }, 300),
    sendGoTopGA() {
      window.ga("newmedia.send", {
        "hitType": "event",
        "eventCategory": "button",
        "eventAction": "click",
        "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [回到最上方]"
      });
    },
  },
  mounted() {
    this.pageTotalHeight = document.body.scrollHeight - window.innerHeight;
    window.addEventListener('scroll', this.handleScroll);
  },
  destroyed() {
    window.removeEventListener('scroll', this.handleScroll);
  },
};
</script>

<style lang="scss" scoped>
.go-top-container {
  position: fixed;
  z-index: 5000;
  right: 20px;
  bottom: 20px;
  width: 45px;
  height: 45px;
  overflow: hidden;
  @media only screen and (min-width: 768px) and (max-width: 1024px) {
    right: calc(50% - 320px);
  }
  @media only screen and (min-width: 1025px) {
    right: calc(50% - 440px);
  }
}
.go-top {
  cursor: pointer;
  transition: .666s ease-in-out;
  transform: translateY(45px);
}
.go-top--active {
  transform: translateY(0);
}
</style>