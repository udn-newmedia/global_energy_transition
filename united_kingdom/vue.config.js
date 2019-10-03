module.exports = {
  publicPath: './',
  chainWebpack: config => {
    config.module.rules.delete('eslint');
  },
  configureWebpack: {
    resolve: {
      alias: {
        '@generals': '../../generals/',
      }
    }
  },
}