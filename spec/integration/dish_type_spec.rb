require 'swagger_helper'

describe 'Dish Types API', type: :request do
  path '/api/v1/dish_types' do

    get 'get all dished' do
      tags 'Dish Types'
      consumes 'application/json', 'application/xml'

      response '200', 'get all dish_types' do
        run_test!
      end

    end

    post 'Creates a dish_types' do
      tags 'Dish Types'
      consumes 'application/json', 'application/xml'
      parameter name: :dish_type, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '201', 'Dish Types created' do
        let(:dish_type) { create(:dish_type) }
        run_test!
      end

    end
  end

  path '/api/v1/dish_types/{id}' do

    get 'get dish_types' do
      tags 'Dish Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get dish_types' do
        let(:id)  { create(:dish_type).id }
        run_test!
      end
    end

    put 'Update a dish_types' do
      tags 'Dish Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :dish_type, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'Dish Types updated' do
        let(:id)  { create(:dish_type).id }
        let(:dish_type) { {name: 'title'} }
        run_test!
      end

    end


    delete 'remove dish_types' do
      tags 'Dish Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:dish_type).id }
        run_test!
      end
    end

  end
end
