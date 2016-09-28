class User < ActiveRecord::Base

    def self.test(user_params)    
        @a = User.new(user_params)
        @a.session_token = SecureRandom.base64
        #@a.email = "!!"
        @user = @a
        #@a.save

        
    end
    
    def self.user_sess(sess_params)
        if @a = User.find_by(user_id: sess_params[:user_id])
            if @a.email != sess_params[:email]
                nil
            else
                return @a
            end
        else
            nil
        end
        
        
        
        
    end
    
    
    
    
end


