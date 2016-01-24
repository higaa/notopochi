class NotopochiController < ApplicationController
	def index
		redirect_to action: :login
	end
	
	def login
	end
	
	def do_login
		name = params[:user]
		password = params[:pass]
		
		entry = NotoPotiUser.find_by(loginname: name, loginpassword: password)
		
		if entry.nil? then
			# メッセージ設定する
			redirect_to action: :login
		else
			session[:userId] = entry.userid
			redirect_to action: :departure
		end
	end
	
	def departure
		entry = NotoPotiUser.find_by(userid: session[:userId])
		if !entry.nil?
			@userName = entry.name
		end
		
		#departureUrl = DB検索(出発地点のURL)
		#getAndSave(departureUrl, departureFile)
		
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
		session[:notoPotiDatum] = NotoPotiDatum.create(userid: session[ :userId])
		session[:seqNum] = 0
		redirect_to action: :traveling
	end
	
	def traveling
		entry = NotoPotiUser.find_by(userid: session[:userId])
		if !entry.nil?
			@userName = entry.name
		end
		
	end
	
	def getoff
		redirect_to action: :traveling
	end
	
	def arrive
		latitude = params[:lati]
		longitude = params[:logi]
		
		#NotoPotiDatum.update
		datum = session[:notoPotiDatum]
		session[:seqNum] += 1
		NotoPotiDatumDetail.create(potidataid: datum[:potidataid], potidataseqnum: session[:seqNum], endposition: "")#latitude + "," + longitude)
		
		redirect_to action: :arrived
	end
	
	def arrived
		entry = NotoPotiUser.find_by(userid: session[:userId])
		if !entry.nil?
			@userName = entry.name
		end
		
		@arrivedPoints = [ 
			[ 36.578055, 136.648654 ],
			[ 36.678055, 136.748654 ]
		]
		@arrivedNames = [ 
			"金沢駅" ,
			""
		]
		@arrivedComments = [ 
			"金沢の駅です" ,
			""
		]
		@arrivedTimes = [ 
			[ 11,3 ],
			[ 12, 12 ]
		]
	end
end
