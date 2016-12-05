class Http_Request
	attr_accessor :url

	def initialize(url, header)
		@url = url
		@header = header
	end

	def get(request_url)
		if request_url.empty?
			raise 'request_url is empty'
		end

		url = @url + request_url
		response = RestClient.get(url)
		@data = JSON.parse response.body
		return @data
	end

	def post(request_url, pay_load)
		if request_url.empty? and pay_load.emtpy?
			raise 'request_url / payload is empty'
		end

		url = @url + request_url
		response = RestClient.post(url, pay_load)
		@data = JSON.parse response.body
		return @data
	end

	def put(request_url, pay_load)
		if request_url.empty? and pay_load.emtpy?
			raise 'request_url / payload is empty'
		end

		url = @url + request_url
		response = RestClient.put(url, pay_load)
		@data = JSON.parse response.body
		return @data
	end
end

