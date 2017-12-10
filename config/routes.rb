Rails.application.routes.draw do
  get 'stalk/index'

  get 'survice/index'

  get 'new_teacher/index'

  get 'admins/index'

  resources :homerooms
  get 'homerooms', to: 'homerooms#index'
  get 'homerooms/index'
  get 'intros', to: 'intro#index'
  get 'intros/index'
  get 'admins', to: 'stalk#index'
  get 'admin', to: 'stalk#index'
  get 'new_teacher', to: 'new_teacher#index'
  get 'new_teacher/index'
  get 'survice', to: 'survice#index'
  get 'survice/index'
  get 'stalk', to: 'stalk#index'
  get 'stalk/index'
  post 'stalk/get_result', to: 'stalk#get_result'
  post 'stalk/get_result'  
  post 'admins/index', to: 'admins#index'
  post 'admins/index'  
  post 'homerooms/new_lesson'
  post 'homerooms/new_lesson', to: 'homerooms#new_lesson'
  post 'new_teacher/newer'
  post 'new_teacher/newer', to: 'new_teacher#newer'
  get '*unmatched_route', to: 'application#render_404'
end
