module Api
  module V1
    class TransactionsController < ApplicationController
      before_action :set_transaction, only: [:show, :update, :destroy]

      def index
        @transactions = Transaction.all
        render json: @transactions
      end

      def show
        render json: @transaction
      end

      def create
        puts "Transaction params: #{transaction_params.inspect}"
        @transaction = Transaction.new(transaction_params)
      
        if @transaction.save
          puts "Transaction saved successfully."
          render json: @transaction, status: :created
        else
          puts "Transaction save failed. Errors: #{@transaction.errors.full_messages}"

          render json: @transaction.errors, status: :unprocessable_entity
        end
      end
      

      def update
        if @transaction.update(transaction_params)
          render json: @transaction
        else
          render json: @transaction.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @transaction.destroy
        head :no_content
      end

      private

      def set_transaction
        @transaction = Transaction.find(params[:id])
      end

      def transaction_params
        params.require(:transaction).permit(:description, :transaction_date, :value, :status, :category)
      end
    end
  end
end