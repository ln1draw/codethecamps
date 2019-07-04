Rails.application.routes.draw do
  scope '/api' do
    resources :locales, except: [:new, :edit, :delete]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
