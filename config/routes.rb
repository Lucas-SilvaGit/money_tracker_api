Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :transactions, except: [:new, :edit]
      resources :expenses, except: [:new, :edit]
      resources :incomes, except: [:new, :edit]
    end
  end
end
