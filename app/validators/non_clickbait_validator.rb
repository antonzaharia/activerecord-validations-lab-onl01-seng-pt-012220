class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.match?(/Won't Believe/, /Secret/, /Top [number]/, /Guess/)
      record.errors[:title] << "We're only allowed non-clickbait titles!"
    end
  end
end
