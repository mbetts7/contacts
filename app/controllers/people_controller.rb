class PeopleController < ApplicationController
  def index
    @people = Person.all
    @email_domains = @people.map { |p| p.email.split('@')[1] }.uniq.sort
  end
end
