require_relative '../lib/protobuf/user_protobuf.rb'

class UsersResponder < ApplicationResponder
    topic :users

    user = User.new
    user.first_name = 'sam'
    user.last_name = 'test'

    user_encoded = user.to_proto

    def respond(event_payload)
        respond_to :users, user_encoded
    end
end      