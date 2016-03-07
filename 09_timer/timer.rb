class Timer
	def initialize
		@seconds = 0
	end
	def seconds
		@seconds
	end
	def seconds=(number)
		@seconds = number
	end
	def time_string
		if seconds>3600
			hours = seconds/3600
			if hours>9
				hours_string = hours.to_s
			else
				hours_string = '0' + hours.to_s
			end
		else
			hours = 0
			hours_string = '00'
		end
		if hours>0
			mins = (seconds%3600)/60
			if mins>9
				mins_string = mins.to_s
			else
				mins_string = '0' + mins.to_s
			end
		elsif seconds>60
			mins = seconds/60
			if mins>9
				mins_string = mins.to_s
			else
				mins_string = '0' + mins.to_s
			end
		else		
			mins = 0
			mins_string = '00'	
		end
		if seconds>60	
			secs = seconds%60
			if secs>9
				secs_string = secs.to_s
			else
				secs_string = '0' + secs.to_s
			end
		elsif seconds == 0
			secs = 0
			secs_string = '00'	
		else		
			secs = seconds
			if secs>9
				secs_string = secs.to_s
			else
				secs_string = '0' + secs.to_s
			end				
		end
		return hours_string + ':' + mins_string + ':' + secs_string
	end
end