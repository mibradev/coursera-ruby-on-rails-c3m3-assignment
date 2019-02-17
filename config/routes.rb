Rails.application.routes.draw do
  root "races#index"
  resources :races

  resources :racers do
    post "entries" => "racers#create_entry"
  end
end
