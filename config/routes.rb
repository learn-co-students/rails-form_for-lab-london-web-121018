Rails.application.routes.draw do
  resources :school_classes, only: %i[index show new create edit update]
  resources :students, only: %i[index show new create edit update]

end
