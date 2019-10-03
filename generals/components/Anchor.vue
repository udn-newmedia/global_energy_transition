<template>
  <div id="anchor" class="anchor-container">
    <div :class="{
        'anchor-wrapper': true,
        'anchor-fixed': anchorFixedFlag,
      }"
    >
      <button :class="{
        'anchor': true,
        'anchor-active': currentPage === 0
        }"
        @click="sendAnchorGA('JP')"
      >
        <a name="日本" :href="originPath + 'Japan/#article'" target="_blank">
          日本
        </a>
      </button>
      <button :class="{
        'anchor': true,
        'anchor-active': currentPage === 1
        }"
        @click="sendAnchorGA('SK')"
      >
        <a name="南韓" :href="originPath + 'South_Korea/#article'" target="_blank">
          南韓
        </a>
      </button>
      <button :class="{
        'anchor': true,
        'anchor-active': currentPage === 2
        }"
        @click="sendAnchorGA('Germany')"
      >
        <a name="德國" :href="originPath + 'Germany/#article'" target="_blank">
          德國
        </a>
      </button>
      <button :class="{
        'anchor': true,
        'anchor-active': currentPage === 3
        }"
        @click="sendAnchorGA('NL')"
      >
        <a name="荷蘭" :href="originPath + 'The_Netherlands/#article'" target="_blank">
          荷蘭
        </a>
      </button>
      <button :class="{
        'anchor': true,
        'anchor-active': currentPage === 4
        }"
        @click="sendAnchorGA('UK')"
      >
        <a name="英國" :href="originPath + 'United_Kingdom/#article'" target="_blank">
          英國
        </a>
      </button>
    </div>
  </div>
</template>

<script>
import Utils from 'udn-newmedia-utils';

export default {
  name: 'Anchor',
  props: {
    anchorFixedFlag: {
      type: Boolean,
      default: false,
    },
    currentPage: {
      type: Number,
      required: true,
    },
  },
  data() {
    return {
      originPath: window.location.origin + '/newmedia/2019/global_energy_transition/'
    }
  },
  methods: {
    sendAnchorGA(title) {
      window.ga("newmedia.send", {
        "hitType": "event",
        "eventCategory": "menubar",
        "eventAction": "click",
        "eventLabel": "[" + Utils.detectPlatform() + "] [" + document.querySelector('title').innerHTML + "] [" + title + "]",
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.anchor-container {
  position: relative;
  width: 100%;
  height: 55px;
  background-color: #000000;
  @media only screen and (min-width: 769px)  {
    height: 68px;
  }
  .anchor-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-top: solid 1px #707070;
    background-color: #000000;
    transition: border .333s ease-in-out;
    padding: 0 60px;
    @media only screen and (min-width: 769px) {
      padding: 0 calc(50vw - 440px);
    }
    .anchor {
      height: 100%;
      outline: none;
      border: none;
      color: #ababab;
      background-color: #000000;
      border-bottom: 2px solid transparent;
      a {
        outline: none;
        color: inherit;
      }
    }
    .anchor-active {
      color: #1eee78;
      border-bottom: 2px solid #1eee78;
    }
  }
  .anchor-fixed {
    position: fixed;
    z-index: 9999;
    top: 0;
    left: 0;
    width: 100%;
    height: 55px;
    border: none;
    @media only screen and (min-width: 769px)  {
      height: 68px;
    }
  }
}
</style>