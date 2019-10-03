<template>
  <div id="anchor" class="anchor-container">
    <div :class="{
        'anchor-wrapper': true,
        'anchor-fixed': anchorFixedFlag,
      }"
    >
      <a :class="{
        'anchor': true,
        'anchor-active': currentPage === 0
        }"
        @click="sendAnchorGA('JP')"
        name="看日本專題"
        target="_blank"
        :href="originPath + 'Japan/#article'"
      >
        <button name="日本">
          日本
        </button>
      </a>
      <a :class="{
        'anchor': true,
        'anchor-active': currentPage === 1
        }"
        @click="sendAnchorGA('SK')"
        name="看南韓專題"
        target="_blank"
        :href="originPath + 'South_Korea/#article'"
      >
        <button name="南韓" >
          南韓
        </button>
      </a>
      <a :class="{
        'anchor': true,
        'anchor-active': currentPage === 2
        }"
        @click="sendAnchorGA('Germany')"
        name="看德國專題"
        target="_blank"
        :href="originPath + 'Germany/#article'"
      >
        <button name="德國">
          德國
        </button>
      </a>
      <a :class="{
        'anchor': true,
        'anchor-active': currentPage === 3
        }"
        @click="sendAnchorGA('NL')"
        name="看荷蘭專題"
        target="_blank"
        :href="originPath + 'The_Netherlands/#article'"
      >
        <button name="荷蘭">
          荷蘭
        </button>
      </a>
      <a :class="{
        'anchor': true,
        'anchor-active': currentPage === 4
        }"
        @click="sendAnchorGA('UK')"
        name="看英國專題"
        target="_blank"
        :href="originPath + 'United_Kingdom/#article'"
      >
        <button name="英國">
          英國
        </button>
      </a>
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
        "eventCategory": "menu bar",
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
      border-bottom: 2px solid transparent;
      button {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        outline: none;
        border: none;
        color: inherit;
        background-color: #000000;
      }
    }
    .anchor-active {
      color: #1eee78;
      border-bottom: 3px solid #1eee78;
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