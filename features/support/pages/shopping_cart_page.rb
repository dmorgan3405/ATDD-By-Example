class ShoppingCartPage
  include PageObject

  button(:complete_adoption, :value => 'Complete the Adoption')
  button(:continue_shopping, :value => 'Adopt Another Puppy')
  table(:cart, :index => 0)
  cell(:cart_total, :class => 'total_cell')

  NAME_COLUMN = 1
  PRICE_COLUMN = 3

  def name_for_line(line_number)
    line_item_by_index(line_number)[NAME_COLUMN].text
  end

  def price_for_line(line_number)
    line_item_by_index(line_number)[PRICE_COLUMN].text
  end

  def total_amount
    cart_total_element.text
  end

  private

  def line_item_by_index(line_number)
    row_index = (line_number - 1) * 6
    cart_element[row_index]
  end
end
