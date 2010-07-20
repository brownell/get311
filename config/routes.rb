ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest
  # priority.

  map.emergency 'emergency', :controller => 'place_holder', :action => 'emergency'
  map.calendar 'calendar', :controller => 'place_holder', :action => 'calendar'
  map.map 'map', :controller => 'place_holder', :action => 'map'
  map.jobs 'jobs', :controller => 'place_holder', :action => 'jobs'
  map.departments 'departments', :controller => 'place_holder', :action => 'departments'
  map.libraries 'libraries', :controller => 'place_holder', :action => 'libraries'
  map.emergency 'transit', :controller => 'place_holder', :action => 'transit'
  map.emergency 'news', :controller => 'place_holder', :action => 'news'
  map.emergency 'news', :controller => 'place_holder', :action => 'news'
  map.emergency 'three11', :controller => 'place_holder', :action => 'three11'
  map.emergency 'help', :controller => 'place_holder', :action => 'help'
  map.emergency 'bookmark', :controller => 'place_holder', :action => 'bookmark'
  map.emergency 'animals', :controller => 'place_holder', :action => 'animals'
  map.emergency 'learn', :controller => 'place_holder', :action => 'learn'
  map.emergency 'enroll', :controller => 'place_holder', :action => 'enroll'
  map.emergency 'pay', :controller => 'place_holder', :action => 'pay'
  map.emergency 'notify', :controller => 'place_holder', :action => 'notify'
  map.emergency 'howto', :controller => 'place_holder', :action => 'howto'
  map.emergency 'visitors', :controller => 'place_holder', :action => 'visitors'
  map.parks 'parks', :controller => 'place_holder', :action => 'parks'
  map.transport 'transport', :controller => 'place_holder', :action => 'transport'
  map.mobileabout 'mobileabout', :controller => 'place_holder', :action => 'mobile_about'

  map.resources :solutions, :collection => {:get_for_extra_noun_verb => :get,
    :get_for_noun_verb => :get}

  map.resources :extras, :collection => {:get_for_noun_verb => :get}

  map.resources :nouns, :collection => {:get_for_verb => :get}

  map.resources :verbs

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to
  # delete public/index.html.
  map.root :controller => "home", :action => 'splash'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority. Note: These default
  # routes make all actions in every controller accessible via GET requests. You
  # should consider removing or commenting them out if you're using named routes
  # and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
