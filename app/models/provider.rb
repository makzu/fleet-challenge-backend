class Provider < ApplicationRecord
  has_many :rates

  monetize :amount_cents, with_model_currency: :amount_currency
  monetize :common_amount_cents, with_currency: :usd
end
