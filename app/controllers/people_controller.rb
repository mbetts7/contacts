class PeopleController < ApplicationController
  def index
    # remember the domain name selected
    @email_domain = params[:email_domain] || 'All'

    # get all the available domain names
    @email_domains = Person.all_email_domains

    @people = Person.find_all_with_email_domain @email_domain
  end
end
