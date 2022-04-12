class StocksController < ApplicationController

    def search
        return invalid_symbol unless params[:stock].present?

        @stock = Stock.new_lookup(params[:stock])
        return render 'users/my_portfolio' if @stock
        invalid_symbol
    end

    private

    def invalid_symbol 
        flash[:alert] = "Please enter a valid symbol to search"
        redirect_to my_portfolio_path
    end


end
