# For models with Money objeccts in `amount` and `common_amount`, where
# common_amount is a USD-only field
module WithCommonRate
  extend ActiveSupport::Concern

  included do
    before_save :update_usd_amount

    def update_usd_amount
      return unless will_save_change_to_amount_cents? || will_save_change_to_amount_currency?

      self.common_amount = amount.exchange_to('usd')
    end
  end
end
