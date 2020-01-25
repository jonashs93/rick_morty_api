class ApplicationResource < ActiveResource::Base
  self.site = 'https://rickandmortyapi.com/api/'
  self.include_format_in_path = false
end
