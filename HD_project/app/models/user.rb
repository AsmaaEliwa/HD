class User < ApplicationRecord
    validates :name  ,:phone_number,:birth_date , presence:true ,allow_nil:false
    validates :sex , length: {is:1}
    # validates : ,presence
    # require :validate_age

    private
  
    def validate_age
        if birth_date.present? && birth_date > 18.years.ago.to_d
            errors.add(:birth_date, 'You should be over 18 years old.')
        end
    end
    def user_age(birth_date)
        now = Time.now.utc.to_date
        now.year - birth_date.year - ((now.month > dob.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
      end
    
 
end
