require 'active_model/validator'
require 'extensions/active_model/type/boolean'

class BooleanValidator < ActiveModel::EachValidator
  BOOLEAN_VALUES = ActiveModel::Type::Boolean::TRUE_VALUES + ActiveModel::Type::Boolean::FALSE_VALUES

  def validate_each(record, attribute, value)
    if options.dig(:fuzzy)
      fuzzy_validation(record: record, attribute: attribute, value: value)
    else
      # By default, call strict_validation
      strict_validation(record: record, attribute: attribute, value: value)
    end
  end

  private

  def strict_validation(record:, attribute:, value:)
    return if BOOLEAN_VALUES.include?(value)

    record.errors.add(attribute, :invalid, options.slice(:message).merge(value: value))
  end

  def fuzzy_validation(record:, attribute:, value:)
    casted_value = ActiveModel::Type::Boolean.new.send(:cast_value, value)
    return if BOOLEAN_VALUES.include?(casted_value)

    record.errors.add(attribute, :invalid, options.slice(:message).merge(value: value))
  end
end
