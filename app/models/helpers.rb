class Helpers
    def self.is_logged_in?(session)
        if session[:user_id].nil?
            return false
        else
            return true
        end
    end

    def self.user_is_valid?(username, password)
        user = User.all.find_by(username: username)
        binding.pry
        if !user.nil? && user.authenticate(password)
            return user
        end
        
        false
    end
end