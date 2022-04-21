const GET_LANDING_PAGE = /* GraphQL */ `
  fragment logo on LandingPage {
    logo {
      alternativeText
      url
    }
  }

  fragment header on LandingPage {
    header {
      title
      description
      button {
        label
        url
      }
      image {
        alternativeText
        url
      }
    }
  }

  fragment aboutProject on LandingPage {
    aboutProject: sectionAboutProject {
      title
      description
      image {
        alternativeText
        url
      }
    }
  }

  fragment techTools on LandingPage {
    techTools: sectionTech {
      title
      techIcons {
        icon {
          url
        }
        title
      }
    }
  }

  query GET_LANDING_PAGE {
    landingPage {
      ...logo
      ...header
      ...aboutProject
      ...techTools
    }
  }
`

export default GET_LANDING_PAGE
