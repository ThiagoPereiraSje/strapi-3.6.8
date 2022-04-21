import React from 'react'

import Container from 'components/Container'
import Heading from 'components/Heading'

import * as S from './styles'
import { FaqProps } from 'types/api'

type Props = {
  faq: FaqProps
}

const SectionFaq = ({ faq }: Props) => (
  <S.Wrapper>
    <S.Content>
      <Container>
        <Heading>{faq.title}</Heading>

        <S.Questions>
          {faq.questions.map(({ question, answer }, index) => (
            <S.Question key={index}>
              <Heading lineBottom>{question}</Heading>
              <div dangerouslySetInnerHTML={{ __html: answer }} />
            </S.Question>
          ))}
        </S.Questions>
      </Container>
    </S.Content>
  </S.Wrapper>
)

export default SectionFaq
