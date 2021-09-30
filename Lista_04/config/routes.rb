Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        get 'mystudents/:id', to: 'teachers#mystudents'
        get 'mysubject/:id', to: 'teachers#mysubject'
        post 'create', to: "teachers#create"
        patch 'update/:id', to: 'teachers#update'
        delete 'delete/:id', to: "teachers#delete"
      end
      scope 'subjects' do
        get 'index', to: 'subjects#index'
        post 'create', to: "subjects#create"
        delete 'delete/:id', to: "subjects#delete"
      end
      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        get 'mysubject/:id', to: 'students#mysubject'
        post 'create', to: "students#create"
        patch 'update/:id', to: 'students#update'
        delete 'delete/:id', to: "students#delete"
      end
    end
  end
end
