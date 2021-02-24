Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products_path" => "products#products_actions"
    get "/one_product_path" => "products#one_product_actions"
    get "/two_product_path" => "products#two_product_actions"
    get "/three_product_path" => "products#three_product_actions"


  end
end
