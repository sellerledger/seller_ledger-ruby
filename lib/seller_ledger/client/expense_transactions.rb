# frozen_string_literal: true

module SellerLedger
  class Client
    module ExpenseTransactions
      def list_expense_transactions(params = {})
        paginated_request(
          "/v1/transactions/expenses",
          params,
          "transactions"
        )
      end

      def create_expense_transaction(params)
        post("/v1/transactions/expenses", params)
      end

      def update_expense_transaction(id, params)
        validate(id)
        put("/v1/transactions/expenses/#{id}", params)
      end

      def get_expense_transaction(id)
        validate(id)
        get("/v1/transactions/expenses/#{id}")
      end

      def delete_expense_transaction(id)
        validate(id)
        delete("/v1/transactions/expenses/#{id}")
      end
    end
  end
end
