module Utilities

  protected

  def classify_phone
    ua = request.user_agent
    phone_type = 'computer'
    prefix = 'basic'
    $USER_AGENTS.each do |x|
      r = Regexp.new(x[:contains], Regexp::IGNORECASE )
      match = r.match(ua)
      unless match.nil?
        phone_type = x[:phone_type]
        prefix = x[:prefix]
        break
      end
    end
    return phone_type, prefix
  end


end