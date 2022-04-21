import React from 'react'
import Slider from 'react-slick'

import Container from 'components/Container'
import Heading from 'components/Heading'
import ReviewCard from 'components/ReviewCard'

import * as S from './styles'
import { ReviewsBoxProps } from 'types/api'

const settings = {
  dots: true,
  arrows: false,
  slidesToShow: 2,
  infinite: false,
  speed: 500,
  rows: 2,
  slidesPerRow: 1,
  slidesToScroll: 2,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 1,
        rows: 2,
        slidesPerRow: 1,
        slidesToScroll: 1
      }
    }
  ]
}

type Props = {
  reviewsBox: ReviewsBoxProps
}

const SectionReviews = ({ reviewsBox }: Props) => (
  <Container>
    <Heading reverseColor>{reviewsBox.title}</Heading>

    <S.Content>
      <Slider {...settings}>
        {reviewsBox.reviews.map(({ name, photo, text }, index) => (
          <ReviewCard
            key={index}
            name={name}
            image={photo?.url}
            description={text}
            id={index}
          />
        ))}
      </Slider>
    </S.Content>
  </Container>
)

export default SectionReviews
