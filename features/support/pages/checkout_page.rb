class CheckoutPage
  include PageObject

  text_field(:name, :id => 'order_name')
  text_area(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:payment_method, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

  DEFAULT_DATA = {
    'name' => 'Your Name Here',
    'address' => '1151 N Marginal Rd',
    'email' => 'you@example.com',
    'payment_method' => 'Credit card'
  }

  def checkout(overrides = {})
    checkout_data = DEFAULT_DATA.merge(overrides)
    self.name = checkout_data['name']
    self.address = checkout_data['address']
    self.email = checkout_data['email']
    self.payment_method = checkout_data['payment_method']
    place_order
  end

end
