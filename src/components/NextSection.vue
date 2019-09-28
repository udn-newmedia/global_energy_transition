<template>
  <div class="next-section-container">
    <button class="page-button prev-button">
      <a v-if="directInfo.prev" :href="originPath + directInfo.prev.url" target="_blank" name="上一篇">
        {{directInfo.prev}}
      </a>
    </button>
    <button class="page-button next-button">
      <a :href="originPath + directInfo.next.url" target="_blank" name="下一篇">
        下一篇：{{directInfo.next.title}}
        <br>
        {{directInfo.next.description}}
      </a>
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
  data() {
    return {
      originPath: window.location.origin + '/global_energy_transition/'
    }
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
    height: 100%;
    outline: none;
    border: solid 1px #e2e2e2;
    background-color: #f6f6f6;
    a {
      position: relative;
      outline: none;
      color: inherit;
      width: 100%;
      height: 100%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: flex-start;
      text-align: left;
      padding: 0 10% 0 5%;
    }
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