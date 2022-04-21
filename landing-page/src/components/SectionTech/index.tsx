import React from 'react'

import Heading from 'components/Heading'
import Container from 'components/Container'

import * as S from './styles'
import { TechToolsProps } from 'types/api'
import { getImageURL } from 'utils/getImageUrl'

type Props = {
  techTools: TechToolsProps
}

const SectionTech = ({ techTools }: Props) => {
  return (
    <S.Wrapper>
      <Container>
        <Heading reverseColor>{techTools.title}</Heading>
        <S.IconsContainer>
          {techTools.techIcons.map(({ title, icon }) => (
            <S.Icon key={title}>
              <S.Icons src={getImageURL(icon.url)} alt={title} loading="lazy" />
              <S.IconsName>{title}</S.IconsName>
            </S.Icon>
          ))}
        </S.IconsContainer>
      </Container>
    </S.Wrapper>
  )
}

export default SectionTech
