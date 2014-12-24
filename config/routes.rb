Rails.application.routes.draw do

  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  get 'welcome/index'

  resources :courses, :concerns => :paginatable
  resources :classrooms, :concerns => :paginatable
  resources :students, :concerns => :paginatable

  root 'welcome#index'
end
