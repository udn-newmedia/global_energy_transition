<template>
  <div id="anchor" class="anchor-container">
    <div :class="{
        'anchor-wrapper': true,
        'anchor-fixed': anchorActiveFlag,
      }"
    >
      <button class="anchor">
        <a name="日本" href="http://" target="_blank" rel="noopener noreferrer">
          日本
        </a>
      </button>
      <button class="anchor">
        <a name="南韓" href="http://" target="_blank" rel="noopener noreferrer">
          南韓
        </a>
      </button>
      <button class="anchor">
        <a name="德國" href="http://" target="_blank" rel="noopener noreferrer">
          德國
        </a>
      </button>
      <button class="anchor">
        <a name="荷蘭" href="http://" target="_blank" rel="noopener noreferrer">
          荷蘭
        </a>
      </button>
      <button class="anchor">
        <a name="英國" href="http://" target="_blank" rel="noopener noreferrer">
          英國
        </a>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Anchor',
  props: {
    anchorActiveFlag: {
      type: Boolean,
      default: false,
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
    border: solid 1px #707070;
    padding: 0 10%;
    background-color: #000000;
    transition: border .333s ease-in-out;
    @media only screen and (min-width: 769px)  {
      padding: 0 20%;  
    }
    .anchor {
      height: 100%;
      outline: none;
      border: none;
      color: #ababab;
      background-color: inherit;
      a {
        outline: none;
        color: inherit;
      }
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