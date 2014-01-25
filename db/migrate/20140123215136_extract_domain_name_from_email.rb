class ExtractDomainNameFromEmail < ActiveRecord::Migration
  def change
  	Person.all.each do |person|
  		person.domain_name = person.email.split("@").last
  		# update people
  		# set domain_name = 'yahoo.com'
  		# where id = ?
  		# person.save persists method to database
  		person.save
  	end
  end
end
