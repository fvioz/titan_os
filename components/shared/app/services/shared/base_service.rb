module Shared
  class BaseService
    def self.perform(**)
      new(**).perform
    end

    # Override this method in subclasses to implement the service logic
    def perform
      raise NotImplementedError, "You must implement the perform method"
    end
  end
end
