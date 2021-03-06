Rails.application.routes.draw do





  # the get maps request for the URL /static_pages/home,help,about,contact.
  # When we generate a home,help,about,contact action inside the StaticPages
  # controller we automatically get a page at the address /static_pages/home,about..
  # get 'controller_name/action_inside_the_controller'

  # When visiting the URL /static_pages/home, Rails looks in the
  # the Static Pages Controller  and executes the code in home action
  # and then renders the view home.html.erb

  # request for / to be routed to the home action in Static Pages Controller

  root 'static_pages#home'

  get  'home' => 'static_pages#home'
  get  'help' => 'static_pages#help'
  get  'about' => 'static_pages#about'
  get  'contact' => 'static_pages#contact'
  get  'terms' => 'static_pages#terms'

  get  'signup' => 'users#signup'


end
