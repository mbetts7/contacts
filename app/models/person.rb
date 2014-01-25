class Person < ActiveRecord::Base
	def self.all_email_domains
		# get all distinct domain names
		select(:domain_name).distinct.map do |person|
			person.domain_name
		#select generates a sql query that does SELECT DISTINCT domain_name FROM people
		#returns an array of people objects...of which you are grabbing
		#an array of domain_name from that array, hence why you use .map
		end
	end

	def self.find_all_with_email_domain email_domain=nil

		
		return [] if email_domain == nil
		return all if email_domain == 'All'
		where('domain_name = ?', email_domain)

		# People.select.
		# select(:people).map do |person|
			# person.domain_name
			#SELECT * from people where email_domain = email_domain
		# @people.to_a.select! { |p| p.email.index @email_domain } unless @email_domain == 'All'

	end

end
