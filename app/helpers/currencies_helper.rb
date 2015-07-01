module CurrenciesHelper
  def usd_to_uah(usd)
    # (usd * InfoHub.get(:currency, :USD, :rate).to_f).ceil
    (usd * rate ).ceil
  end

  def eur_to_uah(eur)
    "#{(eur * rate).ceil} UAH"
  end

  def convert_by_currency(price,currency)
    return unless currency
    currency.eql?("USD")? "#{usd_to_uah(price)} UAH" : "#{uah_to_usd(price)} USD"
  end

  def rate
    @rate ||= Currency.by("EUR").first.rate.to_f
  end
end
