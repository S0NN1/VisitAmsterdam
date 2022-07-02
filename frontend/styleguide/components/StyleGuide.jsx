import React from 'react'
import PropTypes from 'prop-types'
import Logo from 'rsg-components/Logo'
import StyleguideFooter from 'rsg-components/StyleguideFooter'
import Styled from 'rsg-components/Styled'

const xsmall = '@media (max-width: 600px)'

const styles = ({ font, base, light, link, baseBackground, mq, color, space, maxWidth }) => ({
  root: {
    color: base,
    backgroundColor: baseBackground
  },
  header: {
    color: 'rgba(241,90,39,0.58)',
    position: 'fixed',
    top: 0,
    width: '100%',
    height: 50,
    borderBottom: '2px solid',
    backgroundColor: 'white'
  },
  sidebar: {
    backgroundColor: color.sidebarBackground,
    position: 'fixed',
    top: 0,
    left: 0,
    bottom: 0,
    width: 350,
    overflow: 'auto',
    borderRight: '2px solid rgba(241,90,39,0.58)',
    '-webkit-overflow-scrolling': 'touch',
    [mq.small]: {
      position: 'static',
      width: 'auto',
      borderWidth: [[1, 0, 0, 0]],
      paddingBottom: space[0]
    }
  },
  hasSidebar: {
    paddingLeft: 0,
    [mq.small]: {
      paddingLeft: 0
    }
  },
  bar: {
    width: '100%',
    height: 50,
    display: 'flex',
    position: 'fixed',
    top: 0,
    alignItems: 'center',
    justifyContent: 'right',
    [xsmall]: {
      flexDirection: 'column',
      alignItems: 'center',
      justifyContent: 'right'
    }
  },
  nav: {
    width: '50%',
    alignItems: 'center',
    justifyContent: 'right',
    [xsmall]: {
      margin: [[5, 0, 0]],
      width: '70%'
    }
  },
  headerLink: {

    '&, &:link, &:visited': {
      marginLeft: '0.5em',
      marginRight: '0.5em',
      fontFamily: font,
      fontWeight: 'bold',
      color: '#f15a27'
    },
    '&:hover, &:active': {
      color: 'black',
      cursor: 'pointer',
      fontWeight: 'bold'
    }
  },
  content: {
    maxWidth: 1000,
    paddingTop: 15,
    paddingBottom: 15,
    margin: [[30, 'auto']],
    [mq.small]: {
      padding: 15
    },
    display: 'block'
  },
  components: {
    overflow: 'auto' // To prevent the pane from growing out of the screen
  }
})

export function StyleGuideRenderer ({ classes, homepageUrl, title, children, toc, hasSidebar }) {
  return (
    <div className={classes.root}>
      <header className={classes.header}>
        <div className={classes.content}>
          <div className={classes.bar}>
            <nav className={classes.nav}>
              <a className={classes.headerLink} href="https://hyp.lucapirovano.com/">
                Live Demo
              </a>
              <a
                className={classes.headerLink}
                href="https://gitlab.com/polimi-sonny-piro/hyp-project"
              >
                Gitlab Repository
              </a>
            </nav>
          </div>
        </div>
      </header>

      <main className={classes.content}>
        {children}
        <StyleguideFooter homepageUrl={homepageUrl}/>
      </main>
      {hasSidebar && (
        <div className={classes.sidebar}>
          <Logo>{title}</Logo>
          {toc}
        </div>
      )}
    </div>
  )
}

StyleGuideRenderer.propTypes = {
  classes: PropTypes.object.isRequired,
  title: PropTypes.string.isRequired,
  homepageUrl: PropTypes.string.isRequired,
  children: PropTypes.node.isRequired,
  toc: PropTypes.node.isRequired,
  hasSidebar: PropTypes.bool

}

export default Styled(styles)(StyleGuideRenderer)
