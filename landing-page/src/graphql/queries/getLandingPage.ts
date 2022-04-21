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

  fragment pricingBox on LandingPage {
    pricingBox {
      totalPrice
      numberInstallments
      priceInstallment
      benefits {
        description
      }
      button {
        label
        url
      }
    }
  }

  fragment aboutUs on LandingPage {
    aboutUs: sectionAboutUs {
      title
      authors {
        photo {
          url
        }
        name
        role
        socialLinks {
          slug: title
          link: url
        }
        description
      }
    }
  }

  fragment reviewsBox on LandingPage {
    reviewsBox: sectionReviews {
      title
      reviews {
        photo {
          url
        }
        name
        text
      }
    }
  }

  fragment faq on LandingPage {
    faq: sectionFaq {
      title
      questions {
        question
        answer
      }
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
      ...pricingBox
      ...aboutUs
      ...reviewsBox
      ...faq
    }
  }
`

export default GET_LANDING_PAGE
