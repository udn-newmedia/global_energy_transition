<template>
  <div id="app">
    <Anchor :currentPage="1" :anchorFixedFlag="true"/>
    <section class="black-bg">
      <div id="section-cover-1" class="section-cover-container">
        <div :class="{
            'section-cover': true,
            'section-cover-active': sectionCoverFlag_1,
            'section-cover-1': true,
          }"
        >
          <img :src="require('./assets/title/global_energy_transition_South_Korea_title.svg')" alt="日本福島能源轉型">
        </div>
      </div>
    </section>
    <GradientConnection/>
    <section class="black-bg">
      <div class="content">
        <p><br></p>
        <h3 class="green-title">南韓的「脫核去煤」之路</h3>
        <p><br></p>
        <p>南韓總統文在寅於2017年上任後，即宣布走「脫核去煤」之路，積極發展再生能源，計劃在2031年前，把核電廠數量減至18座、將廠齡超過30年的老舊火力發電廠除役，同時把再生能源發電佔比提高至20%，新萬金再生能源計畫正是此願景的關鍵一步。</p>
        <p><br></p>
        <p><br></p>
      </div>
    </section>
  </div>
</template>

<script>
import Anchor from './components/Anchor.vue'
import HandDrawn from './components/HandDrawn.vue'
import GradientConnection from './components/GradientConnection.vue'

export default {
  name: 'app',
  components: {
    Anchor,
    HandDrawn,
    GradientConnection,
  },
};
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
#app {
  p {
    font-size: 18px;
    line-height: 1.67;
    margin: 0;
    text-align: justify;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      font-size: 20px;
      line-height: 1.7;
    }
    @media only screen and (min-width: 1025px) {
      font-size: 21px;
      line-height: 1.45;
    }
  }
  h2 {
    font-size: 24px;
    line-height: 1.33;
    @media only screen and (min-width: 768px) and (max-width: 1024px) {
      font-size: 32px;
      line-height: 1.3;
    }
    @media only screen and (min-width: 1025px) {
      font-size: 35px;
      line-height: 1.34;
    }
  }
  section {
    position: relative;
    width: 100%;
    background-color: #ffffff;
    .section-cover-container {
      position: relative;
      width: 100%;
      height: 100vh;
      .section-cover {
        position: relative;
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: flex-end;
        background-size: cover;
        background-position: center center;
        color: #ffffff;
        img {
          // section cover title
          position: absolute;
          bottom: 15%;
          left: 50px;
          width: 80px;
          @media only screen and (min-width: 768px) and (max-width: 1024px) {
            width: 120px;
            bottom: 20%;
            left: 125px;
          }
          @media only screen and (min-width: 1025px)  {
            width: 120px;
            bottom: 20%;
            left: 300px;
          }
        }
      }
      .section-cover-active {
        position: fixed;
        top: 0;
        left: 0;
        transform: scale(1.01);
        transition: .333s ease-in-out;
      }
      .section-cover-1 {
        background-image: url('./assets/mob/global_energy_transition_South_Korea_cover_m.jpg');
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          background-image: url('./assets/pad/global_energy_transition_South_Korea_cover_pad.jpg');
        }
        @media only screen and (min-width: 1025px)  {
          background-image: url('./assets/pc/global_energy_transition_South_Korea_cover.jpg');
        }
      }
    }
    .section-cover-description {
      font-size: 15px;
      margin-bottom: 50px;
      @media only screen and (min-width: 769px) {
        font-size: 18px;
      }
    }
    .green-title {
      display: inline-block;
      text-align: center;
      color: #1eee78;
      line-height: 1.33;
      border-bottom: solid 1px #1eee78;
      font-size: 1.4rem;
    }
  }
  .content {
    position: relative;
    margin: 0 auto;
    text-align: center;
    padding: 20px 60px;
    @media only screen and (min-width: 769px) {
      padding: 20px calc(50vw - 440px);
    }
    .image-wrapper {
      img {
        width: 100%;
        margin: 5px 0;
        @media only screen and (min-width: 768px) {
          width: 50%;
          &:first-child {
            padding-right: 5px;
          }
          &:last-child {
            padding-left: 5px;
          }
        }
      }
      .image-description {
        color: #5a5a5a;
        font-size: 15px;
      }
    }
  }
  .black-bg {
    // background-color: #0a0808;
    background-color: #000000;
    color: #ffffff;
  }
  .gray-bg {
    background-color: #f6f6f6;
  }
  .white-text {
    color: #ffffff;
  }
  .ending-container {
    position: relative;
    font-size: 15px;
    background-color: #f6f6f6;
    .quesiton-comment-container {
      background-color: #ffffff;
    }
  }
  .text-highlight {
    padding: 2px;
    background: linear-gradient(90deg, #1eee78 50%, transparent 50%);
    background-position: right bottom;
    background-size: 200% 100%;
    transition: 0s;
  }
  .text-highlight-ie {
    padding: 2px;
    background-position: left bottom;
    background-size: 200% 100%;
    background-color: #1eee78;

  }
  .text-highlight-black {
    color: #000000;
  }
  .text-highlight-white {
    color: #ffffff;
  }
  .text-highlight-animate {
    background-position: left bottom;
    transition: 3s ease-in-out;
    color: #000000;
  }
  .editor-container {
    position: relative;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    .editor {
      position: relative;
      width: 100%;
      display: flex;
      .editor-title {
        position: relative;
        text-align: right;
        width: 40%;
        @media only screen and (max-width: 320px) {
          width: 30%;
        }
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          width: 45%;
        }
        @media only screen and (min-width: 1025px)  {
          width: 45%;      
        }
      }
      .editor-member {
        position: relative;
        width: 60%;
        padding: 0 10px 0 0px;
        @media only screen and (max-width: 320px) {
          width: 70%;
          padding: 0 5px 0 5px;
        }
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          width: 55%;        
          padding: 0 30% 0 5px;
        }
        @media only screen and (min-width: 1025px)  {
          width: 55%;
          padding: 0 35% 0 5px;        
        }
        .editor-member-name {
          position: relative;
          display: inline-block;
          width: 50%;
          &:nth-child(odd) {
            text-align: right;
          }
          &:nth-child(even) {
            text-align: left;          
          }
        }
      }
    }
  }
  .logo-container {
    text-align: center;
    img {
      width: 50%;
      @media only screen and (min-width: 768px) and (max-width: 1024px) {
        width: 33%;      
      }
      @media only screen and (min-width: 1280px) {
        width: 200px;
        margin: 0 20px;
      }
    }
  }
}
</style>
