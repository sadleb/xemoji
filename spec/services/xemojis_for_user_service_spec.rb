require 'rails_helper'
require './app/services/xemojis_for_user_service.rb'

describe XemojisForUserService do

  context '#call' do

    it 'returns xemojis that a user has access to' do
      #TODO: implement me if we add any real logic. Right now, it just returns the associations based on
      #what's in the database, so this test is handled by the "requests/api/v1/user_xemojis_spec.rb" test.
    end

  end

end
