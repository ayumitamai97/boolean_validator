require 'active_model/type'

module ActiveModelExtension
  module Boolean
    # FALSE_VALUES are defined in:
    # https://github.com/rails/rails/blob/406d3a926cfcd3724f8002f70346aad95eed4a8c/activemodel/lib/active_model/type/boolean.rb

    TRUE_VALUES = Set.new([true, 1, "1", "t", "T", "true", "TRUE", "on", "ON"])
  end
end

ActiveModel::Type::Boolean.send(:include, ActiveModelExtension::Boolean)
