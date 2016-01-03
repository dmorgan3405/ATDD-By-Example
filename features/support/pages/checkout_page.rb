class CheckoutPage
  include PageObject
  include DataMagic

  text_field(:name, :id => 'order_name')
  text_area(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:payment_method, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

  def checkout(overrides = {})
    checkout_data = data_for(:checkout_page).merge(overrides)
    populate_page_with checkout_data
    place_order
  end

end
