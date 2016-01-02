class CheckoutPage
  include PageObject

  text_field(:name, :id => 'order_name')
  text_field(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:payment_method, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

  def checkout(checkout_data)
    self.name = checkout_data['name']
    self.address = checkout_data['address']
    self.email = checkout_data['email']
    self.payment_method = checkout_data['payment_method']
    place_order
  end

end
