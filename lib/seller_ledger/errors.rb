# frozen_string_literal: true

module SellerLedger
  class Errors

    class Unauthenticated < StandardError
    end

    class Generic < StandardError
    end

    class ValueError < StandardError
      def to_s
        "Method parameter cannot be nil or an empty string"
      end
    end
  end
end
