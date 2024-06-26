# frozen_string_literal: true

module SellerLedger
  class Client
    module ConnectionTransactions
      def list_connection_transactions(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/transactions",
          params,
          "transactions"
        )
      end

      def get_connection_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/transactions/#{transaction_id}")
      end

      def list_connection_financial_transactions(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/transactions/financial",
          params,
          "transactions"
        )
      end

      def create_connection_financial_transaction(connection_id, params)
        validate(connection_id)
        post("/v1/connections/#{connection_id}/transactions/financial", params)
      end

      def update_connection_financial_transaction(connection_id, transaction_id, params)
        validate(connection_id)
        validate(transaction_id)
        put("/v1/connections/#{connection_id}/transactions/financial/#{transaction_id}", params)
      end

      def get_connection_financial_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/transactions/financial/#{transaction_id}")
      end

      def delete_connection_financial_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        delete("/v1/connections/#{connection_id}/transactions/financial/#{transaction_id}")
      end

      def list_connection_refund_transactions(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/transactions/refunds",
          params,
          "transactions"
        )
      end

      def create_connection_refund_transaction(connection_id, params)
        validate(connection_id)
        post("/v1/connections/#{connection_id}/transactions/refunds", params)
      end

      def update_connection_refund_transaction(connection_id, transaction_id, params)
        validate(connection_id)
        validate(transaction_id)
        put("/v1/connections/#{connection_id}/transactions/refunds/#{transaction_id}", params)
      end

      def get_connection_refund_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/transactions/refunds/#{transaction_id}")
      end

      def delete_connection_refund_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        delete("/v1/connections/#{connection_id}/transactions/refunds/#{transaction_id}")
      end

      def list_connection_order_transactions(connection_id, params = {})
        validate(connection_id)
        paginated_request(
          "/v1/connections/#{connection_id}/transactions/orders",
          params,
          "transactions"
        )
      end

      def create_connection_order_transaction(connection_id, params)
        validate(connection_id)
        post("/v1/connections/#{connection_id}/transactions/orders", params)
      end

      def update_connection_order_transaction(connection_id, transaction_id, params)
        validate(connection_id)
        validate(transaction_id)
        put("/v1/connections/#{connection_id}/transactions/orders/#{transaction_id}", params)
      end

      def get_connection_order_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        get("/v1/connections/#{connection_id}/transactions/orders/#{transaction_id}")
      end

      def delete_connection_order_transaction(connection_id, transaction_id)
        validate(connection_id)
        validate(transaction_id)
        delete("/v1/connections/#{connection_id}/transactions/orders/#{transaction_id}")
      end
    end
  end
end
