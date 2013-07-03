require "activemodel_errors_type/version"
require "activemodel_errors_type/errors_type"

if defined? ActiveModel::Errors
  ActiveModel::Errors.send(:include, ActiveModelErrorsType::ErrorsType)
end
