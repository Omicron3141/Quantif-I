module StatisticsHelper
	def mean(data)
		sum = 0
		data.each do |i|
			sum += i
		end
		if sum == 0
			return 0
		end
		sum = Float(sum)/data.length
		return sum
	end

	def stdev(data)
		mean = mean(data)
		sum = 0
		data.each do |i|
			sum += (i-mean)**2
		end
		if sum == 0
			return 0
		end
		sum = Float(sum)/(data.length-1)
		return Math.sqrt(sum)
	end
end