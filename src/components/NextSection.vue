<template>
  <div class="next-section-container">
    <button class="page-button prev-button">
      {{directInfo.prev}}
    </button>
    <button class="page-button next-button">
      下一篇：{{directInfo.next.title}}
      <br>
      {{directInfo.next.description}}
    </button>
  </div>
</template>

<script>
export default {
  name: 'NextSection',
  props: {
    directInfo: {
      type: Object,
      required: true,
    },
  },
  computed: {
    isMob() {
      return window.innerWidth < 769 ? true : false;
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
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    text-align: left;
    outline: none;
    height: 100%;
    border: solid 1px #e2e2e2;
    background-color: #f6f6f6;
  }
  .prev-button {
    flex-grow: 1;
  }
  .next-button {
    flex-grow: 1;
  }
}
</style>