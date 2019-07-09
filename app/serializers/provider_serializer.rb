class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount_cents, :amount_currency, :common_amount_cents
end
