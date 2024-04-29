# frozen_string_literal: true

module SellerLedger
  class Client
    module Transactions
      def list_transactions(params = {})
        paginated_request(
          "/v1/transactions",
          params,
          "transactions"
        )
      end

      def get_transaction(id)
        get("/v1/transactions/#{id}")
      end
    end
  end
end
