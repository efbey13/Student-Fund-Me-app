class Payments

  def self.donate_to_need(amount, currency = 'usd', stripe_token)
    Stripe::Charge.create(
    amount: amount,
    currency: currency,
    source: stripe_token
    )
  end

  def self.refund_money(charge)
    charge = Stripe::Charge.retrieve(charge)
    charge.refunds.create(
    
    )
  end
end
