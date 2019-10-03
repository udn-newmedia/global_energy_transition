<template>
  <div class="share-block">
    <div class="fb-like-block" @click="shareToFb">
      <div class="fb-like" :data-href="setProps('href')" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
    </div>
    <div class="line-block" @click="shareToLine">
      <img class="line-share" src="//media.line.me/img/button/zh-hant/84x20.png" width="84" height="20" alt="LINE分享給朋友">
    </div>
  </div>
</template>

<script>

import { detectPlatform, detectMob } from 'udn-newmedia-utils';
import setProps from '@/mixin/setProps.js';
export default {
  name: 'Share',
  mixins: [setProps],
  props: {
    href: {
      type: String,
    },
    jsonProps: {
      type: Object,
      default: null,
    },
  },
  methods: {
    shareToFb() {
      window.ga('newmedia.send', {
        hitType: 'event',
        eventCategory: 'FB Share',
        eventAction: 'click',
        eventLabel: `[${detectPlatform()}] [${document.querySelector('title').innerHTML}] [fb share]`,
      });
    },
    shareToLine() {
      if (detectMob()) {
        // 手機
        window.location.href = `https://line.me/R/msg/text/?${encodeURIComponent(document.querySelector('title').innerHTML)}%0D%0A%0D%0A${encodeURIComponent(document.querySelector('meta[property="og:description"]').content)}%0D%0A%0D%0A${encodeURIComponent(this.href)}`
      } else {
        window.open(`https://line.me/R/msg/text/?${encodeURIComponent(document.querySelector('title').innerHTML)}%0D%0A%0D%0A${encodeURIComponent(document.querySelector('meta[property="og:description"]').content)}%0D%0A%0D%0A`)
      }
      window.ga('newmedia.send', {
        hitType: 'event',
        eventCategory: 'Line Share',
        eventAction: 'click',
        eventLabel: `[${detectPlatform()}] [${document.querySelector('title').innerHTML}] [line share]`,
      });
    },
  },
  created() {
    window.onload = () => {
      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = '//connect.facebook.net/zh_TW/sdk.js?t-1#xfbml=1&version=v2.7&appId=1010324812347164';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    }
  },
};
</script>

<style scoped>
.share-block {
  position: relative;
  width: max-content;
  max-width: 200px;
  line-height: 0;
  display: flex;
  height: 20px;
  margin: 0 auto;
}
.fb-like-block {
  margin-right: 8px;
}
.line-block {
  cursor: pointer;
}
</style>
