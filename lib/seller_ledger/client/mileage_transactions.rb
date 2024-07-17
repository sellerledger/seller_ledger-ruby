# frozen_string_literal: true

module SellerLedger
  class Client
    module MileageTransactions
      def list_mileage_expenses(params = {})
        paginated_request(
          "/v1/mileage_expenses",
          params,
          "mileage_expenses"
        )
      end

      def create_mileage_expense(params)
        post("/v1/mileage_expenses", params)
      end

      def update_mileage_expense(id, params)
        validate(id)
        put("/v1/mileage_expenses/#{id}", params)
      end

      def get_mileage_expense(id)
        validate(id)
        get("/v1/mileage_expenses/#{id}")
      end

      def delete_mileage_expense(id)
        validate(id)
        delete("/v1/mileage_expenses/#{id}")
      end
    end
  end
end
