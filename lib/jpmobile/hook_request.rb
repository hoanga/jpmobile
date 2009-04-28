require 'jpmobile/request_with_mobile'

### Handle Rails 2.2 or lower case
if defined?(ActionController::AbstractRequest)
  class ActionController::AbstractRequest
    include Jpmobile::RequestWithMobile
  end
### Handle Rails 2.3 case
else
  class ActionController::Request
    include Jpmobile::RequestWithMobile
  end
end
