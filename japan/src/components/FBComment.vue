<template>
  <div class="fb-comment-block">
    <div class="fb-comments" :data-href="setProps('href')" data-numposts="5" data-width="100%" data-order-by="reverse_time"></div>
  </div>
</template>

<script>
import setProps from '../mixin/setProps.js'
export default {
  name: 'FbComment',
  mixins: [setProps],
  props: {
    href: {
      type: String
    },
    jsonProps: {
      type: Object,
      default: null
    }
  },
  created () {

  }
}
</script>

<style scoped>
.fb-comment-block{
  position: relative;
  z-index: 50;
}
</style>
