# frozen_string_literal: true

module SellerLedger
  class Client
    module MileageTransactions
      def list_mileage_transactions(params = {})
        paginated_request(
          "/v1/transactions/mileage",
          params,
          "transactions"
        )
      end

      def create_mileage_transaction(params)
        post("/v1/transactions/mileage", params)
      end

      def update_mileage_transaction(id, params)
        put("/v1/transactions/mileage/#{id}", params)
      end

      def get_mileage_transaction(id)
        get("/v1/transactions/mileage/#{id}")
      end

      def delete_mileage_transaction(id)
        delete("/v1/transactions/mileage/#{id}")
      end
    end
  end
end
