Rails.application.routes.draw do

  mount Like::Engine => '/'

  devise_for :users
  resources :collections
  resources :subjects
  resources :topics

  get '/:subject/like' , to: 'starter#like' , :as => 'like_subject'
  get '/:subject/comment' , to: 'starter#comment' , :as => 'comment_subject'
  get '/:topic/topic' , to: 'starter#topic' , :as => 'topic_subject'
  root 'starter#index'

end
