import React from 'react'

import Container from 'components/Container'
import Heading from 'components/Heading'

import * as S from './styles'
import { LearnConceptsProps } from 'types/api'

type Props = {
  learnConcepts: LearnConceptsProps
}

const SectionConcepts = ({ learnConcepts }: Props) => {
  return (
    <Container>
      <S.Box>
        <Heading lineBottom>{learnConcepts.title}</Heading>
        <S.List>
          {learnConcepts.concepts.map(({ title }) => (
            <S.Item key={title}>{title}</S.Item>
          ))}
        </S.List>
      </S.Box>
    </Container>
  )
}

export default SectionConcepts
