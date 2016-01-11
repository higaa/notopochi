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
		session[:userId] = entry[ :userId]
		
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
		#@departurePoints = [ { :id => "1", :name => "金沢駅(ダミーデータ)" },
		#	{ :id => "2", :name => "香林坊(ダミーデータ)" } ]
		@departurePoints = { "金沢駅"  => 1,
			"近江町いちば館" => 2,
			"金沢21世紀美術館" => 3,
			"兼六園" => 4 }
		#CSV.foreach(departureFile) do |row|
		#	@departurePoints.push(row[9])
		#end
	end
	
	def depart
		#startName = params[
		NotoPotiDatum.create(UserID: session[ :userId])
		redirect_to action: :traveling
	end
	
	def traveling
		
	end
	
	def getoff
		redirect_to action: traveling
	end
	
	def arrive
		redirect_to action: arrived
	end
	
	def arrived
	end
end
