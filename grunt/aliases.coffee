module.exports =
  default: [
    'dist'
    'watch'
  ]
  dist: [
    'clean:dist'
    'distCSS'
    'distJS'
  ]
  distCSS: [
    'buildCSS'
    'cssmin'
  ]
  distJS: [
    'buildJS'
    'uglify'
  ]
  buildCSS: [
    'copy:css'
    'autoprefixer'
    'notify:css'
  ]
  buildJS: [
    'coffee'
    'webpack'
    'clean:temp'
    'notify:coffee'
  ]
  test: [
    'mocha_phantomjs:test'
  ]
  docs: [
    'groc'
    'mochaTest:coverage'
  ]
