require_relative '../lib/protobuf/user_protobuf.rb'

class UsersConsumer < ApplicationConsumer
    def consume 
        params_batch.each do |message|
            puts "Message payload: #{message.payload}"
            user_decoded = User.decode(message.payload)
            puts "Message decoded" 
          end
    end
end     
