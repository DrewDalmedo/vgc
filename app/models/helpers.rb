class Helpers
    def self.is_logged_in?(session)
        session[:user_id].nil? ? return false : return true
    end
end