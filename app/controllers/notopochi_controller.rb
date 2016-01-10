class NotopochiController < ApplicationController
	def index
		redirect_to action: :login
	end
	
	def login
	end
	
	def do_login
		user_id = params[:user]
		password = params[:pass]
		
		#entry = DB検索(user_id)
		
		#if !found then
		#	redirect_to action: :login
		#elsif entry.password != password then
		#	redirect_to action: :login
		#else
			redirect_to action: :departure
		#end
	end
	
	def departure
		
		#departureUrl = DB検索(出発地点のURL)
		#getAndSave(departureUrl, departureFile)
		
		#@departurePoints = ["金沢駅(ダミーデータ)", "香林坊(ダミーデータ)"]
		@departurePoints = [ { :id => "1", :name => "金沢駅(ダミーデータ)" },
			{ :id => "2", :name => "香林坊(ダミーデータ)" } ]
		#CSV.foreach(departureFile) do |row|
		#	@departurePoints.push(row[9])
		#end
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
