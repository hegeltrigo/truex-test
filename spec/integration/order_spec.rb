require 'swagger_helper'

describe 'Orders API', type: :request do
  path '/api/v1/orders' do

    get 'get all option' do
      tags 'Orders'
      consumes 'application/json', 'application/xml'

      response '200', 'get all orders' do
        run_test!
      end

    end

    post 'Creates a orders' do
      tags 'Orders'
      consumes 'application/json', 'application/xml'
      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          client_name: { type: :string }
        }
      }

      response '201', 'orders created' do
        let(:order) { create(:order) }
        run_test!
      end

    end
  end

  path '/api/v1/orders/{id}' do

    get 'get orders' do
      tags 'Orders'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get orders' do
        let(:id)  { create(:order).id }
        run_test!
      end
    end

    put 'Update a orders' do
      tags 'Orders'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :order, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'orders updated' do
        let(:id)  { create(:order).id }
        let(:order) { {client_name: 'Pepito Peraloca'} }
        run_test!
      end

    end


    delete 'remove orders' do
      tags 'Orders'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:order).id }
        run_test!
      end
    end

  end
end
