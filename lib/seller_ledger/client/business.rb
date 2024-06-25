# frozen_string_literal: true

module SellerLedger
  class Client
    module Business
      def get_business(id)
        get("/v1/business")
      end
    end
  end
end
