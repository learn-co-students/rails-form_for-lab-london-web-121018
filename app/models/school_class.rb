class SchoolClass < ActiveRecord::Base
    def to_all
        self.title + " | " + self.room_number.to_s
    end
end
