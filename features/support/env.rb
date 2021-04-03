require 'rspec'
require 'page-object'
require 'data_magic'
require 'require_all'
require_rel 'pages'

ENV['browser'] = 'chrome'

PageObject::PageFactory.routes = {
    :default => [[HomePage, :select_puppy],
                 [DetailsPage, :add_to_cart],
                 [ShoppingCartPage, :proceed_to_checkout],
                 [CheckoutPage, :checkout]],
}

World(PageObject::PageFactory)