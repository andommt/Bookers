Rails.application.routes.draw do
#   get 'booklists/new'
#   get 'booklists/index'
#   # get 'books/show'
#   # get 'books/new'
#   # get 'books/edit'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'top' => 'booklists#top'
# post 'booklists' => 'booklists#create'
# get 'booklists' => 'booklists#index'
# get 'booklists/:id' => 'booklists#show', as: 'booklist'
# get 'booklists/:id/edit' => 'booklists#edit', as: 'edit_booklist'
# patch 'booklists/:id' => 'booklists#update', as: 'update_booklist'
# delete 'booklists/:id' => 'booklists#destroy', as: 'destroy_booklist'
root to: "homes#top"
  resources :books
end
