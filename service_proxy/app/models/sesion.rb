class Sesion < ActiveResource::Base
  self.site = "http://localhost:3001"
  self.primary_key = :_id
end
