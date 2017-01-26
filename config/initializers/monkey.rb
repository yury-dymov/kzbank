class ActiveSupport::TimeWithZone
    def as_json(options = {})
      to_time.to_i
    end
end