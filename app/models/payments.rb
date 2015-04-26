class Payments 

  BASE_URL = "https://api.venmo.com/v1/payments"

  attr_accessor :access_token, :user_id, :note, :amount
   
  def pay_requirements
    @access_token = 055c023e7af57eb4e6109fe1c24f739ed25479f369b25ee793c13606b8f80b81
    @user_id = 145434160922624933
    @note = "A message to accompany the payment."
    @amount = 0.10
  end

  def self.make_a_payment(access_token, user_id, note, amount)


  end

end
