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
    populate_page_with DEFAULT_DATA.merge(overrides)
    place_order
  end

end
