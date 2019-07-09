Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/admin', to: 'admin#index'
  # A real app would use the `resources` helper for rates and/or providers instead of this quick and dirty method
  patch '/admin/update_rate/:id', to: 'admin#update_rate'
  get '/api', to: 'api#index'
end
