module ActiveModelErrorsType
  module ErrorsType

    def self.included(base)
      base.alias_method_chain :initialize, :errors
      base.alias_method_chain :generate_message, :errors
      base.alias_method_chain :clear, :errors
    end

    def initialize_with_errors(base)
      @errors_type = {}
      initialize_without_errors(base)
    end

    def generate_message_with_errors(attribute, type = :invalid, options = {})
      @errors_type[attribute.to_sym] ||= []
      @errors_type[attribute.to_sym] << type
      generate_message_without_errors(attribute, type, options)
    end

    def clear_with_errors
      @errors_type.clear
      clear_without_errors
    end

    def with_types
      @errors_type
    end

  end
end
