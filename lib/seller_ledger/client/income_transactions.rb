# frozen_string_literal: true

module SellerLedger
  class Client
    module IncomeTransactions
      def list_income_transactions(params = {})
        paginated_request(
          "/v1/transactions/income",
          params,
          "transactions"
        )
      end

      def create_income_transaction(params)
        post("/v1/transactions/income", params)
      end

      def update_income_transaction(id, params)
        put("/v1/transactions/income/#{id}", params)
      end

      def get_income_transaction(id)
        get("/v1/transactions/income/#{id}")
      end

      def delete_income_transaction(id)
        delete("/v1/transactions/income/#{id}")
      end
    end
  end
end
