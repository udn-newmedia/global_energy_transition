<template>
  <div class="next-section-container">
    <a
      class="page-button prev-button"
      :style="{
        cursor: directInfo.prev ? 'pointer' : 'default',
      }"
      :href="directInfo.prev ? originPath + directInfo.prev.url : null"
      target="_blank"
      name="上一篇"
      @click="sendNextArticleGA('上一篇')"
    >
      <button
        v-if="directInfo.prev"
        name="上一篇"
      >
        <i class="arrow left"/>
        <div v-if="!isMob" class="page-button-text">
          上一篇：{{directInfo.prev.title}}
          <br>
          {{directInfo.prev.description}}
        </div>
      </button>
    </a>
    <a
      class="page-button next-button"
      :href="originPath + directInfo.next.url"
      target="_blank"
      name="下一篇"
      @click="sendNextArticleGA('下一篇')"
    >
      <button
        name="下一篇"
      >
        <div class="page-button-text">
          下一篇：{{directInfo.next.title}}
          <br>
          {{directInfo.next.description}}
        </div>
        <i class="arrow right"/>
      </button>
    </a>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

export default {
  name: 'NextSection',
  props: {
    directInfo: {
      type: Object,
      required: true,
    },
  },
  data() {
    return {
      originPath: window.location.origin + '/newmedia/2019/global_energy_transition/',
    }
  },
  computed: {
    isMob() {
      return window.innerWidth < 769 ? true : false;
    },
  },
  methods: {
    sendNextArticleGA(dir) {
      window.ga("newmedia.send", {
        "hitType": "event",
        "eventCategory": "next",
        "eventAction": "click",
        "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [" + dir + "]",
      });
    },
  },
};
</script>

<style lang="scss">
.next-section-container {
  position: relative;
  width: 100%;
  height: 125px;
  display: flex;
  border: solid 1px #e2e2e2;
  background-color: #f6f6f6;
  @media only screen and (min-width: 769px)  {
    height: 165px;
  }
  .page-button {
    position: relative;
    height: 100%;
    button {
      position: relative;
      outline: none;
      color: inherit;
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: left;
      padding: 0 10% 0 5%;
      background-color: #f6f6f6;
      border: solid 1px #e2e2e2;
      outline: none;

    }
    .page-button-text {
      position: relative;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: flex-start;
      padding: 0 10px;
      color: #333333;
      @media only screen and (min-width: 768px)  {
        padding: 0 30px;    
      }
    }
  }
  i {
    border: solid #dcdcdc;
    border-width: 0 8px 8px 0;
    display: inline-block;
    padding: 8px;
  }
  .arrow {

  }
  .right {
    transform: rotate(-45deg);
    -webkit-transform: rotate(-45deg);
  }
  .left {
    transform: rotate(135deg);
    -webkit-transform: rotate(135deg);
  }
  .prev-button {
    width: 25%;
    @media only screen and (min-width: 769px)  {
      width: 50%;
    }
  }
  .next-button {
    width: 75%;
    @media only screen and (min-width: 769px)  {
      width: 50%;
    }
  }
}
</style>