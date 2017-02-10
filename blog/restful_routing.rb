          Prefix Verb   URI Pattern                     Controller#Action
    sessions_new GET    /sessions/new(.:format)         sessions#new
 sessions_create POST   /sessions/create(.:format)      sessions#create
sessions_destroy DELETE /sessions/destroy(.:format)     sessions#destroy
     friendships GET    /friendships(.:format)          friendships#index
                 POST   /friendships(.:format)          friendships#create
  new_friendship GET    /friendships/new(.:format)      friendships#new
 edit_friendship GET    /friendships/:id/edit(.:format) friendships#edit
      friendship GET    /friendships/:id(.:format)      friendships#show
                 PATCH  /friendships/:id(.:format)      friendships#update
                 PUT    /friendships/:id(.:format)      friendships#update
                 DELETE /friendships/:id(.:format)      friendships#destroy
           users GET    /users(.:format)                users#index
                 POST   /users(.:format)                users#create
        new_user GET    /users/new(.:format)            users#new
       edit_user GET    /users/:id/edit(.:format)       users#edit
            user GET    /users/:id(.:format)            users#show
                 PATCH  /users/:id(.:format)            users#update
                 PUT    /users/:id(.:format)            users#update
                 DELETE /users/:id(.:format)            users#destroy
           posts GET    /posts(.:format)                posts#index
                 POST   /posts(.:format)                posts#create
        new_post GET    /posts/new(.:format)            posts#new
       edit_post GET    /posts/:id/edit(.:format)       posts#edit
            post GET    /posts/:id(.:format)            posts#show
                 PATCH  /posts/:id(.:format)            posts#update
                 PUT    /posts/:id(.:format)            posts#update
                 DELETE /posts/:id(.:format)            posts#destroy
        comments GET    /comments(.:format)             comments#index
                 POST   /comments(.:format)             comments#create
     new_comment GET    /comments/new(.:format)         comments#new
    edit_comment GET    /comments/:id/edit(.:format)    comments#edit
         comment GET    /comments/:id(.:format)         comments#show
                 PATCH  /comments/:id(.:format)         comments#update
                 PUT    /comments/:id(.:format)         comments#update
                 DELETE /comments/:id(.:format)         comments#destroy
            root GET    /                               home#index
