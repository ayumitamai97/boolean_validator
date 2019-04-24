require 'active_model/validator'

class BooleanValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if [true, false].include?(value)

    record.errors.add(attribute, :invalid, options.slice(:message).merge(value: value))
  end
end
