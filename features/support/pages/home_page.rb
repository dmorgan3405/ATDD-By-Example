class HomePage
  include PageObject

  page_url 'puppies.herokuapp.com'

  button(:view_details, :value => 'View Details')

end
