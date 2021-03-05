Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    get "/products" => "products#index"

    post "/products" => "products#create"

    get "/products/:id" => "products#show"

    patch "/products/:id" => "products#update"

    delete "/products/:id" => "products#destroy"

    get "/suppliers" => "suppliers#index"

    post "/suppliers" => "suppliers#create"

    get "/suppliers/:id" => "suppliers#show"

    patch "/suppliers/:id" => "suppliers#update"

    delete "/suppliers/:id" => "suppliers#destroy"



    # get "/query_products_path/:id" => "products#query_products_action"
    # get "/one_product_path" => "products#one_product_actions"
    # get "/two_product_path" => "products#two_product_actions"
    # get "/three_product_path" => "products#three_product_actions"
    # get "/query_products_path" => "products#query_products_action"
    # get "/products_path/:query_products" => "products#query_seg_products"

  end
end
