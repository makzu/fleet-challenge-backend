class RateSerializer < ActiveModel::Serializer
  attributes :id, :origin, :destination,
             :amount_cents, :amount_currency, :common_amount_cents,
             :name
end
