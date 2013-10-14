CoffeeCats::Application.routes.draw do
  root :to => "root#root"
  resources :cats
end
