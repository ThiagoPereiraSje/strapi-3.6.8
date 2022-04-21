import React from 'react'

import Heading from 'components/Heading'
import Container from 'components/Container'
import ProfileCard from 'components/ProfileCard'

import * as S from './styles'
import { AboutUsProps } from 'types/api'

type Props = {
  aboutUs: AboutUsProps
}

const SectionAboutUs = ({ aboutUs }: Props) => {
  return (
    <Container>
      <Heading reverseColor>{aboutUs.title}</Heading>

      <S.Content>
        {aboutUs.authors.map((profile) => (
          <ProfileCard
            key={profile.name}
            name={profile.name}
            role={profile.role}
            image={profile.photo.url}
            socialLinks={profile.socialLinks}
            description={profile.description}
          />
        ))}
      </S.Content>
    </Container>
  )
}

export default SectionAboutUs
