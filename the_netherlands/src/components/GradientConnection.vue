<template>
  <div 
    :class="{
      'gradient-connection': true,
      'reverse': reverse,
      'inner': inner,
      'top': top,
      'bottom': bottom,
      'upper': upper,
    }"
  />
</template>

<script>
export default {
  name: 'GradientConnection',
  props: {
    reverse: {
      type: Boolean,
      default: false,
    },
    inner: {
      type: Boolean,
      default: false,
    },
    top: {
      type: Boolean,
      default: false,
    },
    bottom: {
      type: Boolean,
      default: false,
    },
    upper: {
      type: Boolean,
      default: false,
    },
  },
};
</script>

<style lang="scss" scoped>
.gradient-connection {
  position: relative;
  width: 100%;
  height: 50vh;
  background-image: linear-gradient(to top, #000000, rgba(0, 0, 0, 0));
  transform: translateY(2px);
}
.reverse {

  background-image: linear-gradient(to bottom, #000000, rgba(0, 0, 0, 0));
}
.inner {
  position: absolute;
}
.top {
  top: -5px;
  left: 0;
}
.bottom {
  bottom: -5px;
  left: 0;
}
.upper {
  z-index: 50;
}
</style>