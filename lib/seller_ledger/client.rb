# frozen_string_literal: true

require "faraday"
require "json"
require "seller_ledger/client/categories"
require "seller_ledger/client/transactions"
require "seller_ledger/client/mileage_transactions"
require "seller_ledger/client/income_transactions"
require "seller_ledger/client/expense_transactions"

module SellerLedger
  class Client
    include SellerLedger::Client::Categories
    include SellerLedger::Client::Transactions
    include SellerLedger::Client::MileageTransactions
    include SellerLedger::Client::IncomeTransactions
    include SellerLedger::Client::ExpenseTransactions

    def initialize(token:, url: "https://api.sellerledger.com")
      @token = token
      @url = url
    end

    def post(url, params = {})
      request(:post, url, params).body
    end

    def get(url, params = {})
      request(:get, url, params).body
    end

    def put(url, params = {})
      request(:put, url, params).body
    end

    def delete(url)
      request(:delete, url).body
    end

    def request(method, url, params)
      response = agent.send(method, url, params)
      raise SellerLedger::Errors::Unauthenticated.new if response.status == 401
      raise SellerLedger::Errors::Generic.new(response.body["error"]) if response.body["error"].present?
      response
    end

    def paginated_request(url, params, results_key)
      response = request(:get, url, params)
      {
        "total" => response.headers["x-total"].to_i,
        "total_pages" => response.headers["x-total-pages"].to_i,
        "per_page" => response.headers["x-per-page"].to_i,
        "page_number" => response.headers["x-page"].to_i,
        "next_page_number" => response.headers["x-next-page"].to_i,
        "prev_page_number" => response.headers["x-prev-page"].to_i,
        results_key => response.body[results_key]
      }
    end

    private

    def agent
      @agent ||= Faraday.new(@url) do |f|
        f.request :authorization, "token", @token
        f.request :json
        f.response :json
      end
    end
  end
end
