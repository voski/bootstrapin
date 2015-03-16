AuthDemo::Application.routes.draw do
  resource :session, only: [:create, :destroy, :new]
  resource :user, only: [:create, :new, :show] do
    resource :counter, only: [:update]
  end
  resources :spaces
end


# Prefix Verb   URI Pattern             Controller#Action
# session POST   /session(.:format)      sessions#create
# new_session GET    /session/new(.:format)  sessions#new
#        DELETE /session(.:format)      sessions#destroy
# user_counter PATCH  /user/counter(.:format) counters#update
#        PUT    /user/counter(.:format) counters#update
#   user POST   /user(.:format)         users#create
# new_user GET    /user/new(.:format)     users#new
#        GET    /user(.:format)         users#show
# spaces POST   /spaces(.:format)       spaces#create
# new_spaces GET    /spaces/new(.:format)   spaces#new
# edit_spaces GET    /spaces/edit(.:format)  spaces#edit
#        GET    /spaces(.:format)       spaces#show
#        PATCH  /spaces(.:format)       spaces#update
#        PUT    /spaces(.:format)       spaces#update
#        DELETE /spaces(.:format)       spaces#destroy
