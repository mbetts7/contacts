class Person < ActiveRecord::Base
  def self.find_all_with_email_domain domain=nil
    return [] if domain == nil
    return all if domain == 'All'

    where(domain_name: domain)
  end

  def self.all_email_domains
    # first, you'll need to create a migration to create a 
    # separate column, which will contain the domain names 
    # for each person 
    #
    # second, you'll need to create a migration that will
    # insert the domain names into the domain name field
    # by first extracting the domain names
    #
    # then, you'll need to figure out how to return 
    # distinct domain names with sql

    Person.select(:domain_name).distinct.map { |p| p.domain_name }
  end
end
