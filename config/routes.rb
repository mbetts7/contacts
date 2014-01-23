Contacts::Application.routes.draw do
  root to: 'people#index' 
  get 'people', to: 'people#index'
  get 'people/with_domain/:email_domain', 
    to: 'people#index', 
    constraints: { email_domain: /[^\/]+/ },
    as: 'people_with_domain'
end
