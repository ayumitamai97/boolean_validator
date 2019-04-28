require 'active_model/validator'
require 'extensions/active_model/type/boolean'

class BooleanValidator < ActiveModel::EachValidator
  BOOLEAN_VALUES = ActiveModel::Type::Boolean::TRUE_VALUES + ActiveModel::Type::Boolean::FALSE_VALUES

  def validate_each(record, attribute, value)
    return if BOOLEAN_VALUES.include?(value)

    record.errors.add(attribute, :invalid, options.slice(:message).merge(value: value))
  end
end
