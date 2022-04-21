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

  fragment learnConcepts on LandingPage {
    learnConcepts: sectionConcepts {
      title
      concepts {
        title
      }
    }
  }

  fragment courseModules on LandingPage {
    courseModules: sectionModules {
      title
      modules {
        title
        subtitle
        description
      }
    }
  }

  fragment agenda on LandingPage {
    agenda: sectionAgenda {
      title
      description
    }
  }

  query GET_LANDING_PAGE {
    landingPage {
      ...logo
      ...header
      ...aboutProject
      ...techTools
      ...learnConcepts
      ...courseModules
      ...agenda
    }
  }
`

export default GET_LANDING_PAGE
