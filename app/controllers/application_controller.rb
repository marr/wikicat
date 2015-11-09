class ApplicationController < ActionController::API
  ActiveModel::Serializer.config.adapter = :json
end
