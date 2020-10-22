require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("foo/user.proto", :syntax => :proto3) do
    add_message "foo.User" do
      optional :first_name, :string, 1
      optional :last_name, :string, 2
    end
  end
end

module Foo
  User = Google::Protobuf::DescriptorPool.generated_pool.lookup("foo.User").msgclass
end