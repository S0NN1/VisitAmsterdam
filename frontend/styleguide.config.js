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
    title: 'Visit Amsterdam Docs',
    components: 'components/**/[A-Z]*.vue',
    pagePerSection: true,
    copyCodeButton: true,
    exampleMode: 'expand',
    tocMode: 'collapse',
    theme: {
      color: {
        link: '#ffffff',
        linkHover: 'gray',
        sidebarBackground: '#f15a27',
        ribbonBackground: '#f15a27'
      }
    },
    styles: {
      StyleGuide: {
        logo: {
          border: 'none'
        }
      },
      Logo: {
        logo: {
          color: '#ffffff'
        }
      },

      Heading: {
        heading1: {
          fontWeight: 'bold '
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
        name: 'Project Description',
        content: 'docs/README.md'
      },
      {
        name: 'Documentation',
        sectionDepth: 2,
        sections: [
          {
            name: 'Installation',
            content: 'docs/installation.md',
            description: 'The description for the installation section'
          },
          {
            name: 'Configuration',
            content: 'docs/configuration.md'
          },
          {
            name: 'Main Components',
            content: 'docs/main-components.md',
            components: 'components/[A-Z]*.vue'
          },
          {
            name: 'Icons components',
            content: 'docs/icons.md',
            components: 'components/icons/[A-Z]*.vue'
          },
          {
            name: 'Pages',
            content: 'docs/pages.md'
          }
        ]
      }
    ],
    renderRootJsx: resolve(__dirname, 'styleguide/styleguide.root.js'),
    webpackConfig,
    styleguideDir: 'dist',
    // styleguideComponents: {
    //   LogoRenderer: resolve(__dirname, 'styleguide/components/Logo'),
    //   StyleGuideRenderer: resolve(__dirname, 'styleguide/components/StyleGuide')
    // },
    ribbon: {
      text: 'Gitlab source code',
      url: 'https://gitlab.com/polimi-sonny-piro/hyp-project'
    }
  }
}
