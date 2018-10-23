Rails.application.routes.draw do
  resource :product, only: [:index, :add]

  get '/' do "product#index"
end
