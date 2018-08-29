class Api::SessionsController < DeviseTokenAuth::SessionsController
    skip_before_action :verify_authenticity_token

    def new
        super
    end
end