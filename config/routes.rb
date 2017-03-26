Rails.application.routes.draw do
  get "/dragons" => "dragons#index"
  get "/dragons/new" => "dragons#new"
  post "/dragons/" => "dragons#create"
  get "/dragons/:id" => "dragons#show"

end
