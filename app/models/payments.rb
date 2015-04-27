class Payments

  def self.donate_to_need(amount, currency = 'usd', source)
    Stripe::Charge.create(
    amount: amount,
    currency: currency,
    description: description,
    source: source
    )
  end

  def self.refund_money(charge)
    charge = Stripe::Charge.retrieve(charge)
    charge.refunds.create
  end
end
