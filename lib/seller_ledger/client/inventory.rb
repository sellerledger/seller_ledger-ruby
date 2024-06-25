# frozen_string_literal: true

module SellerLedger
  class Client
    module Inventory
      def list_inventory_purchases(params)
        paginated_request(
          "/v1/inventory/purchases",
          params,
          "purchases"
        )
      end

      def create_inventory_purchase(params)
        post("/v1/inventory/purchases", params)
      end

      def get_inventory_purchase(id)
        get("/v1/inventory/purchases/#{id}")
      end

      def delete_inventory_purchase(id)
        delete("/v1/inventory/purchases/#{id}")
      end
    end
  end
end
