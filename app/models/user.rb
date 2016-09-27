class User < ActiveRecord::Base
    #attr_accessor :user_id, :email, :session_token
    #@a = User.new(:user_id, :email, :session_token)
    #@a.session_token = "xXx"
    #@a.user_id = "test"
    #@a.save

    def self.test(user_params)    
        @a = User.new(user_params)
        #@a.email = "TEST"
        @a.session_token = SecureRandom.base64
        
        @user = @a
        #@a.save

        
    end
    
    
    
end


