require 'swagger_helper'

describe 'Users API' do

  path '/api/v1/users' do

    get 'Retrieves all users' do
      tags 'Users'
      produces 'application/json'

      response '200', 'users found' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            firstname: { type: :string },
            lastname: { type: :string },
            email: { type: :string }
          },
          required: [ 'id', 'firstname', 'lastname', 'email' ]

        run_test!
      end
    end
  end

  path '/api/v1/users/{id}' do

    get 'Retrieves an user' do
      tags 'Users'
      produces 'application/json'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'User found' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer, },
              firstname: { type: :string },
              lastname: { type: :string },
              email: { type: :string }
            },
            required: [ 'id', 'firstname', 'lastname', 'email' ]
          }

        let(:id) { User.create(firstname: 'John', lastname: 'Doe', email: 'john.doe@mooncard.co' ).id }
        run_test!
      end

      response '404', 'user not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
