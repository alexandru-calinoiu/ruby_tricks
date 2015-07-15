def numbers
	return to_enum(__callee__) unless block_given?
	yield 1
	yield 2
	yield 3
end

p numbers.to_a