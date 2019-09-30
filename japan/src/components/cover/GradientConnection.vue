<template>
  <div class="gradient-connection">

  </div>
</template>

<script>
export default {
  name: 'GradientConnection'
}
</script>

<style lang="scss" scoped>
.gradient-connection {
  position: relative;
  width: 100%;
  height: 50vh;
  background-image: linear-gradient(to top, #000000, rgba(0, 0, 0, 0));
  transform: translateY(2px);
}
</style>