import React from 'react'

import Container from 'components/Container'
import Heading from 'components/Heading'

import * as S from './styles'
import { AgendaProps } from 'types/api'

type Props = {
  agenda: AgendaProps
}

const SectionAgenda = ({ agenda }: Props) => (
  <Container id="agenda">
    <Heading reverseColor>{agenda.title}</Heading>
    <S.Text dangerouslySetInnerHTML={{ __html: agenda.description }} />
  </Container>
)

export default SectionAgenda
