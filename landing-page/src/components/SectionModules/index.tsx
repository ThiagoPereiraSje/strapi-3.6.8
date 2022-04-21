import React from 'react'

import Heading from 'components/Heading'
import Container from 'components/Container'
import CardModule from 'components/CardModule'

import * as S from './styles'
import { CourseModulesProps } from 'types/api'

type Props = {
  courseModules: CourseModulesProps
}

const SectionModules = ({ courseModules }: Props) => {
  return (
    <Container>
      <Heading reverseColor>{courseModules.title}</Heading>

      <S.Content>
        {courseModules.modules.map(
          ({ title, subtitle, description }, index) => (
            <CardModule key={index} title={title} subTitle={subtitle}>
              <div dangerouslySetInnerHTML={{ __html: description }} />
            </CardModule>
          )
        )}
      </S.Content>
    </Container>
  )
}

export default SectionModules
