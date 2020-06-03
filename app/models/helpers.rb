class Helpers
    def self.is_logged_in?(session)
        if session[:user_id].nil?
            return false
        else
            return true
        end
    end
end