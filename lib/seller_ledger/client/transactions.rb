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

      def get_transaction(id, params = {})
        validate(id)
        get("/v1/transactions/#{id}", params)
      end

      def create_transaction(params)
        post("/v1/transactions", params)
      end

      def update_transaction(id, params)
        validate(id)
        put("/v1/transactions/#{id}", params)
      end

      def delete_transaction(id, params = {})
        validate(id)
        delete("/v1/transactions/#{id}", params)
      end
    end
  end
end
