# frozen_string_literal: true

module SellerLedger
  class Errors

    class Unauthenticated < StandardError
    end

    class Generic < StandardError
    end
  end
end
