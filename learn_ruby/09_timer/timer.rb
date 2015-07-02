class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = 0
		minutes = 0
		seconds = @seconds
		if seconds > 60
			minutes = seconds/60
			seconds = seconds - minutes*60
		end
		if minutes > 60
			hours = minutes/60
			minutes = minutes - hours*60
		end

		output = ""
		if hours < 10 && hours > 0
			output += '0' + hours.to_s + ':'
		elsif hours > 10
			output += hours.to_s + ':'
		elsif hours == 0
			output += '00:'
		end

		if minutes < 10 && minutes > 0
			output += '0' + minutes.to_s + ':'
		elsif minutes > 10
			output += minutes.to_s + ':'
		elsif minutes == 0
			output += '00:'
		end

		if seconds < 10 && seconds > 0
			output += '0' + seconds.to_s
		elsif seconds > 10
			output += seconds.to_s
		elsif seconds == 0
			output += '00'
		end

		output

	end

end