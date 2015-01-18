Rails.application.routes.draw do


  devise_for :users
  resources :collections

  resources :subjects

  resources :topics


  get '/:subject/like' , to: 'starter#like' , :as => 'like_subject'
  get '/:subject/comment' , to: 'starter#comment' , :as => 'comment_subject'

  root 'starter#index'

end
