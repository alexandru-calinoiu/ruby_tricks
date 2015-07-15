def api_call(args)
	@retries ||= 0
	begin
		raise Exception.new
	rescue Exception => _ignore
		@retries += 1
		p "Try#{@retries}"
		retry	if @retries < 5
	end
end

api_call({})