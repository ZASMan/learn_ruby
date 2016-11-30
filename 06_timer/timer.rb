class Timer
  attr_accessor :seconds, :time_string

	def initialize
		@seconds = 0
	end

	def time_string
		#Less than ten seconds
		if @seconds < 10
			time_string = "00:00:0" + seconds.to_s	
		#Less than one minute
		elsif @seconds < 60
			time_string = "00:00:" + seconds.to_s
		#Less than one hour
		elsif @seconds >= 60 and @seconds < 3600
			#Minutes with no Extra Seconds
			if @seconds % 60 == 0
				minutes = @seconds / 60
				#Less Than Ten Minutes
				if minutes < 10
					time_string = "00:0" + minutes.to_s + ":00"
				#Less Than 60 Minutes
				elsif minutes >=10 and minutes < 60
					time_string = "00:" + minutes.to_s + ":00"
				#Need for More Than 60 Minutes
				end
			#Minutes with Extra Seconds
			else
				#Minutes
				minutes = @seconds / 60
				if minutes < 10
					minute_str = "0" + minutes.to_s
				else
					minute_str = minutes.to_s
				end
				#Seconds
				seconds = @seconds % 60
				if seconds < 10
					second_str = "0" + seconds.to_s
				else
					second_str = seconds.to_s
				end
				time_string = "00:" + minute_str + ":" + second_str
			end
		#More Than One Hour
		elsif @seconds >= 3600
			#Hours With No Extra Seconds or Minutes
			if @seconds % 3600 == 0
				hours = @seconds / 3600
				if hours < 10
					hour_str = "0" + hours.to_s
				else
					hour_str = hours.to_s
				end
				time_string = hour_str + ":00:00"
			#Hour with Extra Seconds
			else
				hours = @seconds / 3600
				if hours < 10
					hour_str = "0" + hours.to_s
				else
					hour_str = hours.to_s
				end
				minutes = @seconds / 60
				minutes = minutes % 60
				if minutes < 10
					minute_str = "0" + minutes.to_s
				else
					minute_str = minutes.to_s
				end
				seconds = @seconds % 60
				if seconds < 10
					second_str = "0" + seconds.to_s
				else
					second_str = seconds.to_s
				end
				time_string = hour_str + ":" +  minute_str + ":" +  second_str
			end
		end
	end
end
