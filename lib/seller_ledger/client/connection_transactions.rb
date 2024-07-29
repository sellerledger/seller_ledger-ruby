# frozen_string_literal: true

module SellerLedger
  class Client
    module ConnectionTransactions
      def list_orders(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/orders",
          params,
          "transactions"
        )
      end

      def create_order(connection_id, params)
        validate(connection_id)
        post("/v1/connections/#{connection_id}/orders", params)
      end

      def update_order(connection_id, transaction_id, params)
        validate(connection_id)
        validate(transaction_id)
        put("/v1/connections/#{connection_id}/orders/#{transaction_id}", params)
      end

      def get_order(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/orders/#{transaction_id}")
      end

      def delete_order(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        delete("/v1/connections/#{connection_id}/orders/#{transaction_id}")
      end

      def list_refunds(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/refunds",
          params,
          "transactions"
        )
      end

      def create_refund(connection_id, params)
        validate(connection_id)
        post("/v1/connections/#{connection_id}/refunds", params)
      end

      def update_refund(connection_id, transaction_id, params)
        validate(connection_id)
        validate(transaction_id)
        put("/v1/connections/#{connection_id}/refunds/#{transaction_id}", params)
      end

      def get_refund(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/refunds/#{transaction_id}")
      end

      def delete_refund(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        delete("/v1/connections/#{connection_id}/refunds/#{transaction_id}")
      end
    end
  end
end
