# frozen_string_literal: true

module SellerLedger
  class Client
    module Accounts
      def list_accounts(params = {})
        paginated_request(
          "/v1/accounts",
          params,
          "accounts"
        )
      end

      def get_account(id)
        get("/v1/accounts/#{id}")
      end

      def list_account_transactions(id, params = {})
        paginated_request(
          "/v1/accounts/#{id}/transactions",
          params,
          "transactions"
        )
      end

      def list_account_entries(id, params = {})
        paginated_request(
          "/v1/accounts/#{id}/entries",
          params,
          "transactions"
        )
      end
    end
  end
end
