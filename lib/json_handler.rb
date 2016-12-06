class Json_Validator
	attr_accessor :schema

	def initialize(schema)
		@schema = schema
	end

	def validate(body)
		return JSON::Validator.validate(@schema, body)
	end
end

class Json_Parser
	attr_accessor :json

	def initialize(json)
		@json = json
	end

	def get_json
		return @json
	end

	def get_all_json_key
		if @json.class.to_s.eql? 'Hash'
			return @json.keys
		else
			raise 'json is not hash!'
		end
	end

	def get_all_json_values
		if @json.class.to_s.eql? 'Hash'
			return @json.values
		else
			raise 'json is not hash!'
		end
	end

	def get_json_values_by_key(key)
		if @json.class.to_s.eql? 'Hash' or key.class.to_s.eql? 'String'
			return @json[key]
		else
			raise 'json is not hash!'
		end
	end

	def print_json_pretty(json)
		puts JSON.pretty_generate(json)
	end
end
