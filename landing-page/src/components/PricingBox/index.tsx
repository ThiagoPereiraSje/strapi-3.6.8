import React from 'react'

import Button from 'components/Button'
import { gaEvent } from 'utils/ga'

import * as S from './styles'
import { PricingBoxProps } from 'types/api'

const onClick = () =>
  gaEvent({ action: 'click', category: 'buy', label: 'pricing box button' })

type Props = {
  pricingBox: PricingBoxProps
}

const PricingBox = ({ pricingBox }: Props) => (
  <S.Box>
    <S.Prices>
      <S.FullPrice>
        De <span>R${pricingBox.totalPrice}</span> por apenas
      </S.FullPrice>
      <S.DiscountPrice>
        <span>{pricingBox.numberInstallments}x de</span> R$
        {pricingBox.priceInstallment}
      </S.DiscountPrice>
    </S.Prices>
    <S.BenefitsList>
      {pricingBox.benefits.map(({ description }) => (
        <S.BenefitsItem
          key={description}
          dangerouslySetInnerHTML={{ __html: description }}
        />
      ))}
    </S.BenefitsList>

    <Button href={pricingBox.button.url} onClick={onClick} withPrice>
      <p>{pricingBox.button.label}</p>
      <div>
        <S.ButtonFullPrice>R${pricingBox.totalPrice}</S.ButtonFullPrice>
        <S.ButtonDiscountPrice>
          R${pricingBox.totalPrice - 150}
        </S.ButtonDiscountPrice>
      </div>
    </Button>
  </S.Box>
)

export default PricingBox
