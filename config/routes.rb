Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  get 'products/advanced_search' => 'products#advanced_search'
end
