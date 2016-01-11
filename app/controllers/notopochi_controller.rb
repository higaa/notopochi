class NotopochiController < ApplicationController
	def index
		redirect_to action: :login
	end
	
	def login
	end
	
	def do_login
		name = params[:user]
		password = params[:pass]
		
		entry = NotoPotiUser.find_by(loginName: name, loginPassword: password)
		#session[:userId] = entry[ :userId]
		
		if entry.nil? then
			# メッセージ設定する
			redirect_to action: :login
		else
			redirect_to action: :departure
		end
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
		PotiData
		redirect_to action: :traveling
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
