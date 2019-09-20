<template>
  <div id="app">
    <HeadBar/>
    <Cover/>
    <GradientConnection/>
    <CoverContext/>
    <section>
      <div class="content">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem provident autem facere quaerat dolore incidunt unde adipisci iusto nihil voluptatibus nesciunt inventore, ut quo itaque, id maiores, animi ipsa maxime!</p>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sed exercitationem commodi ipsam cum rem, quam blanditiis tempore hic vitae non fuga voluptatem error necessitatibus explicabo omnis aliquid? Quibusdam, ut qui!</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam aspernatur architecto asperiores possimus numquam sequi ad velit eius ipsam? Distinctio modi dolorum dolore cupiditate ducimus minus rem quasi dicta quam.</p>
        <NextSection/>
      </div>
    </section>
    <div class="ending-container">
      <RelatedSection/>
      <div class="editor-container">
        <div class="editor">
          <div class="editor-title">採訪團隊</div>
          <div class="editor-member">
            <div class="editor-member-name">彭慧明、</div>
            <div class="editor-member-name">董俞佳、</div>
            <div class="editor-member-name">蔡佩芳、</div>
            <div class="editor-member-name">謝汶均</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title">製作人</div>
          <div class="editor-member">
            <div class="editor-member-name">謝汶均</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title">影像</div>
          <div class="editor-member">
            <div class="editor-member-name">游昌樺、</div>
            <div class="editor-member-name">鄭超文、</div>
            <div class="editor-member-name">葉信菉、</div>
            <div class="editor-member-name">余承翰、</div>
            <div class="editor-member-name">報系資料照</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title">視覺設計</div>
          <div class="editor-member">
            <div class="editor-member-name">張心慈</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title">網頁設計</div>
          <div class="editor-member">
            <div class="editor-member-name">楊若榆</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title">監製</div>
          <div class="editor-member">
            <div class="editor-member-name">林秀姿、</div>
            <div class="editor-member-name">董谷音、</div>
            <div class="editor-member-name">潘如瑩</div>
          </div>
        </div>
        <div class="editor">
          <div class="editor-title"></div>
          <div class="editor-member">
            <div class="editor-member-name">2019.10.14</div>
          </div>
        </div>
      </div>
      <Share href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
      <div class="logo-container">

      </div>
      <div class="quesiton-comment-container">
        <Question href="https://www.surveycake.com/s/KpQKN" text="填寫閱讀體驗問卷"/>
        <FBComment href="https://udn.com/newmedia/2019/global_energy_transition/Japan/"/>
      </div>
    </div>
    <Foot/>
  </div>
</template>

<script>
import Cover from './components/cover/Cover.vue'
import CoverContext from './components/cover/CoverContext.vue'
import GradientConnection from './components/cover/GradientConnection.vue'
import FBComment from './components/FBComment.vue'
import Foot from './components/Foot.vue'
import HeadBar from './components/HeadBar.vue'
import NextSection from './components/NextSection.vue'
import RelatedSection from './components/RelatedSection.vue'
import Share from './components/Share.vue'
import Question from './components/Question.vue'

export default {
  name: 'app',
  components: {
    Cover,
    CoverContext,
    GradientConnection,
    FBComment,
    Foot,
    HeadBar,
    NextSection,
    RelatedSection,
    Share,
    Question,
  },
  methods: {

  },
  mounted() {
    
  },
  destroyed() {
    
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
  section {
    position: relative;
    width: 100%;
    background-color: #ffffff;
    padding: 20px 0;
  }
  .content {
    position: relative;
    max-width: 880px;
    margin: 0 auto;
    text-align: justify;
    padding: 0 60px;
    @media only screen and (min-width: 769px)  {
      padding: 0;
    }
  }
  .ending-container {
    position: relative;
    font-size: 15px;
    background-color: #f6f6f6;
    .quesiton-comment-container {
      background-color: #ffffff;
    }
  }
}

</style>
