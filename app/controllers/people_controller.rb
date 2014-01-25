class PeopleController < ApplicationController
  def index
    # remember the domain name selected
    @email_domain = params[:email_domain] || 'All'

    # get 
    @people = Person.find_all_with_email_domain @email_domain

    # get all the available domain names
    @email_domains = Person.all_domain_names
    # Person.all_domain_names
    # filter the people based on domain name, when provided
    # @people.Person.
    #Person.find_all_with_email_domain    
  end
end
