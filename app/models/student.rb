class Student < ApplicationRecord
    has_many :awards


    def name
        return firstname + " " + last_name
    end 
    

end
