class NonClickbaitValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.match?(/Won't Believe/, /Secret/, /Top [number]/, /Guess/)
      record.errors[:email] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end
