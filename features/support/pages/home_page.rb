class HomePage
  include PageObject

  page_url "http://puppies.herokuapp.com"

  divs(:name, :class => 'name')
  buttons(:view_detail, :value => 'View Details')

  def select_puppy(name)
    index = index_for(name)
    view_detail_elements[index].click
  end

  private

  def index_for(name)
    name_elements.find_index { |the_div| the_div.text == name }
  end
end