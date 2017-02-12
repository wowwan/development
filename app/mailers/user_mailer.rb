class UserMailer < ApplicationMailer
	def country_created
		mail(to: 'vladi.cherepanov@gmail.com', subject: 'Coutry_created')
    end
end
