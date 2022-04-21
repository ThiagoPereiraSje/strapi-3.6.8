export type LogoProps = {
  alternativeText: string
  url: string
}

export type HeaderProps = {
  title: string
  description: string

  button: {
    label: string
    url: string
  }

  image: {
    alternativeText: string
    url: string
  }
}

export type AboutProjectProps = {
  title: string
  description: string
  image: {
    alternativeText: string
    url: string
  }
}

export type TechIconProps = {
  icon: {
    url: string
  }
  title: string
}

export type TechToolsProps = {
  title: string
  techIcons: TechIconProps[]
}

export type ConceptProps = {
  title: string
}

export type LearnConceptsProps = {
  title: string
  concepts: ConceptProps[]
}

export type ModuleProps = {
  title: string
  subtitle: string
  description: string
}

export type CourseModulesProps = {
  title: string
  modules: ModuleProps[]
}

export type AgendaProps = {
  title: string
  description: string
}

export type LandingPageProps = {
  logo: LogoProps
  header: HeaderProps
  aboutProject: AboutProjectProps
  techTools: TechToolsProps
  learnConcepts: LearnConceptsProps
  courseModules: CourseModulesProps
  agenda: AgendaProps
}
