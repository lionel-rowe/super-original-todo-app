Rails.application.routes.draw do
  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks, except: :show

  # root :tasks

  patch "/toggle/:id" => "tasks#toggle"

end
