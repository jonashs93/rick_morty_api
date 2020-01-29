class ApplicationResource < ActiveResource::Base
  self.site = Rails.application.credentials[:rick_morty_api]
  self.include_format_in_path = false
end
