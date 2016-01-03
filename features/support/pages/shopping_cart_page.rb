class ShoppingCartPage
  include PageObject

  button(:complete_adoption, :value => 'Complete the Adoption')
  button(:continue_shopping, :value => 'Adopt Another Puppy')

end
