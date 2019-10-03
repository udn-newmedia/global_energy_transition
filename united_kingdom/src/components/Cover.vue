<template>
  <div class="cover-container">
    <div class="cover">
      <div class="cover-title">
        <img :src="require(isMob ? '../assets/title/titile_index_m.svg' : '../assets/title/titile_index_PC.svg')" alt="無煤家園真的可行嗎？">
      </div>
      <canvas
        id="frog-bg"
        :width="windowWidth"
        :height="windowHeight"
      />
    </div>
  </div>
</template>

<script>
export default {
  name: "Cover",
  props: {
    frogFlag: {
      type: Boolean,
      default: true,
    },
  },
  data() {
    return {
      windowWidth: window.innerWidth,
      windowHeight: window.innerHeight + 55,
    };
  },
  computed: {
    isMob() {
      return window.innerWidth <= 768 ? true : false;
    },
  },
  watch: {
    frogFlag: {
      handler(flag) {
        if (flag) this.renderFrog();
      },
      deep: true,
    },
  },
  methods: {
    renderFrog() {
      const vm = this;
      let canvasWidth = vm.windowWidth;
      let canvasHeight = vm.windowHeight;
      let pCount = 0;
      let pCollection = new Array();
      let puffs = 1;
      let particlesPerPuff = 2000;
      let img = require('../assets/frog.png');

      let smokeImage = new Image();
      smokeImage.src = img;

      for (let i1 = 0; i1 < puffs; i1++) {
        let puffDelay = i1 * 300; //300 ms between puffs
        for (let i2 = 0; i2 < particlesPerPuff; i2++) {
          addNewParticle(i2 * 50 + puffDelay);
        }
      }

      draw(new Date().getTime(), 3000);

      function addNewParticle(delay) {
        let p = {};
        p.top = canvasHeight * (vm.isMob ? 0.95 : 0.85);
        p.left = randBetween(-canvasWidth * 0.6, canvasWidth);
        p.start = new Date().getTime() + delay;
        p.life = 15000;
        p.speedUp = vm.isMob ? 100 : 135;
        p.speedRight = randBetween(0, 30);
        p.rot = randBetween(-1, 1);
        p.red = Math.floor(randBetween(0, 255));
        p.blue = Math.floor(randBetween(0, 255));
        p.green = Math.floor(randBetween(0, 255));
        p.startOpacity = 0.2;
        p.newTop = p.top;
        p.newLeft = p.left;
        p.size = canvasWidth * (vm.isMob ? 1 : 0.35);
        p.growth = vm.isMob ? 10 : 30;

        pCollection[pCount] = p;
        pCount++;
      }

      function draw(startT, totalT) {
        //Timing
        let stillAlive = false;

        //Grab and clear the canvas
        let c = document.getElementById("frog-bg");
        let ctx = c.getContext("2d");
        ctx.clearRect(0, 0, c.width, c.height);

        //Loop through particles
        for (let i = 0; i < pCount; i++) {
          //Grab the particle
          let p = pCollection[i];

          //Timing
          let td = new Date().getTime() - p.start;
          let frac = td / p.life;

          if (td > 0) {
            if (td <= p.life ) {
              stillAlive = true;
            }

            //attributes that change over time
            let newTop = p.top - p.speedUp * (td / 1000);
            let newLeft = p.left + p.speedRight * (td / 1000);
            let newOpacity = Math.max(p.startOpacity * (1 - frac), 0);

            let newSize = p.size + p.growth * (td / 1000);
            p.newTop = newTop;
            p.newLeft = newLeft;

            //Draw!
            ctx.fillStyle = "rgba(150,150,150," + newOpacity + ")";
            ctx.globalAlpha = newOpacity;
            ctx.drawImage(smokeImage, newLeft, newTop, newSize, newSize);
          }
        }

        //Repeat if there's still a living particle
        if (stillAlive) {
          requestAnimationFrame(function() {
            if (vm.frogFlag) draw(startT, totalT);
            else ctx.clearRect(0, 0, c.width, c.height);
          });
        }
      }

      function randBetween(n1, n2) {
        let r = Math.random() * (n2 - n1) + n1;
        return r;
      }
    },
  },
  mounted() {
    this.renderFrog();
  },
};
</script>

<style lang="scss" scoped>
.cover-container {
  position: relative;
  width: 100%;
  height: 100vh;
  background-color: #0a0808;
  .cover {
    position: fixed;
    z-index: 0;
    top: 0;
    left: 0;
    width: 100%;
    height: 100vh;
    background-color: #0a0808;
    .cover-title {
      position: absolute;
      z-index: 10;
      top: 0;
      left: 0;
      width: 100%;
      text-align: center;
      img {
        width: 80px;
        margin-top: 25%;
        margin-left: 40px;
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
          width: 90px;
          margin-top: 20%;
          margin-left: 45px;
        }
        @media only screen and (min-width: 1025px) {
          width: 100px;
          margin-top: 10%;
          margin-left: 50px;
        }
      }
    }
  }
  canvas {
    position: relative;
    z-index: 20;
  }
}
</style>