class Helpers
    def self.is_logged_in?(session)
        if session[:user_id].nil?
            return false
        else
            return true
        end
    end

    def self.validate_user(username, password)
        user = User.all.find_by(username: username)
        if !user.nil? && user.authenticate(password)
            return user
        end
        
        false
    end

    def self.user_exists?(username, email)
        return false if (User.find_by(username: username).nil? && User.find_by(email: email).nil?)
        true
    end
end