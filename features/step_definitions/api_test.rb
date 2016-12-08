# encoding: utf-8

Before do
	url = 'https://jsonplaceholder.typicode.com/'
	
	@schema = {
		"type" => "object"
	}
	
	@req = Http_Request.new url, {}
end

After do
end

When /我測試員工API編號 (\d+)/ do |op|
	@response = @req.put("posts/#{op}", '')
end

When /我測試圖片API編號 (\d+)/ do |op|
	@response = @req.get("photos/#{op}")
end

Then /我驗證回傳編號 (\w+)/ do |op|
	json = Json_Parser.new(@response)
	ids = json.get_json_values_by_key("id")
	if not ids.eql? "#{op}".to_i
		raise "expect id : #{op}, actual id : #{ids}"
	end
end

Then /我驗證schema/ do
	result = JSON::Validator.validate(@schema, @response)
	if not result
		raise "schema validate : #{result}, \nschema : #{@schema}"
	end
end