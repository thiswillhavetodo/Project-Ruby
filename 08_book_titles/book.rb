class Book
#	def initialize(name=name)
#		@name = name
#	end

	attr_accessor :title

	def title
#		@title.capitalize
		array = @title.split(' ')
		n = 1
		result = [array[0].to_s.capitalize]
		while n<array.length	
			no_capitals = ['over', 'and', 'the', 'in', 'of', 'an', 'a']
			if no_capitals.include?(array[n])#==('over')||array[n]==('and')||array[n]==('the')||array[n]==('in')||array[n]==('of')||array[n]==('a')||array[n]==('an')
				result << (' ' + array[n].to_s)
				n = n+1
			else
				result << (' ' + array[n].to_s.capitalize)
				n = n+1
			end
		end
	return result.join
	end
end