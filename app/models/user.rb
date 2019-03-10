class User < ApplicationRecord
 	devise :database_authenticatable,
         :confirmable, :lockable
end
