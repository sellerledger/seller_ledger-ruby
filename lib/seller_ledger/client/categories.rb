# frozen_string_literal: true

module SellerLedger
  class Client
    module Categories
      def list_categories(options = {})
        paginated_request(
          "/v1/categories",
          options,
          "categories"
        )
      end
    end
  end
end
