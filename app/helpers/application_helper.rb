module ApplicationHelper

  def get_currencies
    @currencies ||= Currency.pluck(:iso)
  end

  def header_currency
    t('.eur', rate: rate)
  end
end
