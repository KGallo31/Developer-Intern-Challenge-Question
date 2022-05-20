class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :no_record


    private

    def no_record(error)
        render json: {error: "#{error.model} not found"},status: :not_found
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages},status: :unprocessable_entity
    end
    
end
