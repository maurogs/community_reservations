class ClientsController < ApplicationController

	def login
	end

	def login_client
		@client = Client.where('email = ?', params[:email]).first
		if @client.blank?
			@client = Client.first
		end
		redis = Redis.new
		redis.set("mykey", "hello world")

		name = "client_" + @client.id.to_s
		name_client = @client.name.to_s
		client_ip = remote_ip()
		redis.set "#{client_ip.to_s}", ['on', "#{name_client}"].to_json
		# redis.set("#{client_ip.to_s}", "#{name}")
		# redis.set("#{client_ip.to_s}", "on")
		# message = { message: JSON.parse(redis.get("#{client_ip}"))[3] }
		# message = { message: redis.get("#{client_ip.to_s}") }
		# message = { message: client_ip }
		# render json: message
	end

	def remote_ip
	    if request.remote_ip == '127.0.0.1'
	      # Hard coded remote address
	      '123.45.67.89'
	    else
	      request.remote_ip
	    end
  	end
end
