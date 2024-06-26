# frozen_string_literal: true

module SellerLedger
  class Client
    module Business
      def get_business
        get("/v1/business")
      end
    end
  end
end
