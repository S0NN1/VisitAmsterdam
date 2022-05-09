module.exports = {
  content: [
    './components/**/*.{js,vue,ts}',
    './layouts/**/*.vue',
    './pages/**/*.vue',
    './plugins/**/*.{js,ts}',
    './nuxt.config.{js,ts}'
  ],
  theme: {
    extend: {}
  },
  plugins: [
    require('daisyui')
  ],
  daisyui: {
    themes: [
      {
        'hyp-theme': {

          primary: '#6419E6',

          secondary: '#0d99ff',

          accent: '#1FB2A6',

          neutral: '#191D24',

          'base-100': '#ffffff',

          info: '#3ABFF8',

          success: '#36D399',

          warning: '#FBBD23',

          error: '#F87272'
        }
      }
    ]
  }
}
