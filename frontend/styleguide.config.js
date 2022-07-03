const { resolve } = require('path')
const { getWebpackConfig } = require('nuxt')

const FILTERED_PLUGINS = [
  'WebpackBarPlugin',
  'VueSSRClientPlugin',
  'HotModuleReplacementPlugin',
  'FriendlyErrorsWebpackPlugin',
  'HtmlWebpackPlugin'
]
/** @type import("vue-styleguidist").Config */
module.exports = async () => {
  const nuxtWebpackConfig = await getWebpackConfig('client', {
    for: 'dev'
  })

  const webpackConfig = {
    module: {
      rules: [
        ...nuxtWebpackConfig.module.rules.filter(
          a => a.loader !== 'eslint-loader'
        )

      ]
    },
    resolve: { ...nuxtWebpackConfig.resolve },
    plugins: [
      ...nuxtWebpackConfig.plugins.filter(
        p => !FILTERED_PLUGINS.includes(p.constructor.name)
      )
    ]
  }

  return {
    template: {
      favicon: 'static/favicon.ico'
    },
    title: 'Visit Amsterdam Docs',
    components: 'components/**/[A-Z]*.vue',
    copyCodeButton: true,
    usageMode: 'expand',
    exampleMode: 'collapse',
    theme: {
      color: {
        link: 'inherit',
        linkHover: 'black',
        sidebarBackground: '#ffffff',
        sidebarWidth: 400
      }
    },
    styles: {
      Sections: {
        root: {
          marginTop: '20px'
        }
      },
      ComponentsList: {
        item: {
          color: '#f15a27'
        }
      },
      Logo: {
        logo: {
          color: '#f15a27'
        }
      },

      Heading: {
        heading1: {
          fontWeight: 'bold ',
          color: '#f15a27'
        },
        heading2: {
          fontWeight: 'bold ',
          color: '#0f9bff'
        },
        heading3: {
          color: '#0f9bff'
        }
      }
    },
    sections: [
      {
        name: '📖 Project Documentation',
        content: 'docs/README.md'
      },
      {
        name: '🏗️ Installation',
        content: 'docs/installation.md',
        description: 'The description for the installation section'
      },
      {
        name: '🔧 Configuration',
        content: 'docs/configuration.md'
      },
      {
        name: '👁️‍🗨️ Style',
        sections: [

          {
            name: '🧩 Main Components',
            content: 'docs/main-components.md',
            components: 'components/[A-Z]*.vue'
          },
          {
            name: '🧱 Icons components',
            content: 'docs/icons.md',
            components: 'components/icons/[A-Z]*.vue'
          }
        ]
      }
    ],
    renderRootJsx: resolve(__dirname, 'styleguide/styleguide.root.js'),
    webpackConfig,
    styleguideDir: 'dist',
    styleguideComponents: {
      LogoRenderer: resolve(__dirname, 'styleguide/components/Logo'),
      StyleGuideRenderer: resolve(__dirname, 'styleguide/components/StyleGuide')
    },
    ribbon: {
      text: 'Gitlab source code',
      url: 'https://gitlab.com/polimi-sonny-piro/hyp-project'
    }
  }
}
