# frozen_string_literal: true

module SellerLedger
  class Client
    module Connections
      def list_connections(params = {})
        paginated_request(
          "/v1/connections",
          params,
          "connections"
        )
      end

      def create_connection(params)
        post("/v1/connections", params)
      end

      def get_connection(id)
        validate(id)
        get("/v1/connections/#{id}")
      end

      def delete_connection(id)
        validate(id)
        delete("/v1/connections/#{id}")
      end
    end
  end
end
