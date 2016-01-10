class NotopochiController < ApplicationController
	def index
		redirect_to action: :login
	end
	
	def login
	end
	
	def do_login
		redirect_to action: :departure
	end
	
	def departure
	end
	
	def depart
	end
	
	def traveling
	end
	
	def getoff
	end
	
	def arrive
	end
	
	def arrived
	end
end
