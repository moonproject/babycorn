require 'swagger_helper'

describe 'Expenses API' do

  path '/api/v1/expenses' do

    get 'Retrieves all expenses' do
      tags 'Expenses'
      produces 'application/json'

      response '200', 'OK' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer, },
              title: { type: :string },
              amount: { type: :integer },
              user_id: { type: :integer },
              status: { type: :string },
            },
            required: [ 'id', 'title', 'amount', 'user_id', 'status' ]
          }

        run_test!
      end
    end
  end

  path '/api/v1/expenses/{id}' do

    get 'Retrieves an expense' do
      tags 'Expenses'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            title: { type: :string },
            amount: { type: :integer },
            user_id: { type: :integer },
            status: { type: :string },
          },
          required: [ 'id', 'title', 'amount', 'user_id', 'status' ]

        let(:id) { Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999).id  }
        run_test!
      end

      response '404', 'Not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    put 'Update an expense' do
      tags 'Expenses'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string
      parameter name: :expense, in: :body, schema: {
        type: :object,
        properties: {
          title: { type: :string },
          amount: { type: :integer },
        },
        required: [ 'title', 'amount' ]
      }

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            title: { type: :string },
            amount: { type: :integer },
            user_id: { type: :integer },
            status: { type: :string },
          },
          required: [ 'id', 'title', 'amount', 'user_id', 'status' ]


        let(:id) { Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999).id }
        run_test!
        end

      response '404', 'Not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/v1/expenses/{id}/validate' do
    post 'Validate an expense' do
      tags 'Expenses'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'OK' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            title: { type: :string },
            amount: { type: :integer },
            user_id: { type: :integer },
            status: { type: :string },
          },
          required: [ 'id', 'title', 'amount', 'user_id', 'status' ]

        let(:id) { Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999).id }
        run_test!
        end

      response '404', 'Not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
