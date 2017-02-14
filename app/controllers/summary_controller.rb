class SummaryController < ApplicationController
	def index  
    @citizenships = Citizenship.all
    @countries = Country.all
    end

end
