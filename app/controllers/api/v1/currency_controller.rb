module Api::V1
  class CurrencyController < ApplicationController
    def index
      @currencies = Currency.all
      render json: @currencies
    end
  end
end