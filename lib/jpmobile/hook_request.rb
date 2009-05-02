require 'jpmobile/request_with_mobile'

### Handle Rails 2.2 or lower case
begin
  class ActionController::AbstractRequest
    include Jpmobile::RequestWithMobile
  end
### Handle Rails 2.3 case
rescue NameError
  class ActionController::Request
    include Jpmobile::RequestWithMobile
  end
end
