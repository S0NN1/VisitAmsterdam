const defaultTheme = require('tailwindcss/defaultTheme')
module.exports = {
  content: [
    './components/**/*.{js,vue,ts}',
    './layouts/**/*.vue',
    './pages/**/*.vue',
    './plugins/**/*.{js,ts}',
    './nuxt.config.{js,ts}'
  ],
  theme: {
    extend: {},
    fontFamily: {
      sans: ['Montserrat', ...defaultTheme.fontFamily.sans],
      ibm: ['IBM Plex Mono', 'sans-sherif']
    }
  },
  plugins: [
    require('daisyui'),
    require('@tailwindcss/line-clamp')
  ],
  daisyui: {
    themes: [
      {
        'hyp-theme': {

          primary: '#F15A28',

          secondary: '#0d99ff',

          accent: '#1FB2A6',

          neutral: '#e4e5ee',

          'base-100': '#ffffff',

          info: '#3ABFF8',

          success: '#31c68f',

          warning: '#FBBD23',

          error: '#F87272'
        }
      }
    ]
  }
}
