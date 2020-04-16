Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Root
  root 'courses#index'
  # Pages
  get 'about', to: 'pages#about'
  # Students
  resources :students, except: [:destroy]
  # Session routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # Course enroll
  post 'course_enroll', to: 'student_courses#create'
end
