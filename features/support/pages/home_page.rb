class HomePage
  include PageObject

  page_url 'puppies.herokuapp.com'

  buttons(:view_detail, :value => 'View Details')

  def view_details_for(puppy_index)
    view_detail_elements[puppy_index - 1].click
  end

end
