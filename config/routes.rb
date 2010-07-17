ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  map.emergency 'emergency', :controller => 'place_holder', :action => 'emergency'
  map.emergency 'calendar', :controller => 'place_holder', :action => 'calendar'
  map.emergency 'map', :controller => 'place_holder', :action => 'map'
  map.emergency 'athletics', :controller => 'place_holder', :action => 'athletics'
  map.emergency 'directory', :controller => 'place_holder', :action => 'directory'
  map.emergency 'libraries', :controller => 'place_holder', :action => 'libraries'
  map.emergency 'transit', :controller => 'place_holder', :action => 'transit'
  map.emergency 'office_hours', :controller => 'place_holder', :action => 'office_hours'
  map.emergency 'news', :controller => 'place_holder', :action => 'news'
  map.emergency 'video', :controller => 'place_holder', :action => 'video'
  map.emergency 'full_site', :controller => 'place_holder', :action => 'full_site'
  map.emergency 'bookmark', :controller => 'place_holder', :action => 'bookmark'
  map.emergency 'activate', :controller => 'place_holder', :action => 'links'
  map.emergency 'learn', :controller => 'place_holder', :action => 'links'
  map.emergency 'apply', :controller => 'place_holder', :action => 'links'
  map.emergency 'find', :controller => 'place_holder', :action => 'links'
  map.emergency 'pay', :controller => 'place_holder', :action => 'links'
  map.emergency 'report', :controller => 'place_holder', :action => 'links'
  map.emergency 'reserve', :controller => 'place_holder', :action => 'links'
  map.emergency 'links', :controller => 'place_holder', :action => 'links'
  map.emergency 'transport', :controller => 'place_holder', :action => 'links'
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

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   map.root :controller => "home", :action => 'splash'

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
