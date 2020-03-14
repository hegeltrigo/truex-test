require 'swagger_helper'

describe 'Dish Sizes API', type: :request do
  path '/api/v1/dish_sizes' do

    get 'get all dished' do
      tags 'Dish Sizes'
      consumes 'application/json', 'application/xml'

      response '200', 'get all dish_types' do
        run_test!
      end

    end

    post 'Creates a dish_types' do
      tags 'Dish Sizes'
      consumes 'application/json', 'application/xml'
      parameter name: :dish_size, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '201', 'Dish Sizes created' do
        let(:dish_size) { create(:dish_size) }
        run_test!
      end

    end
  end

  path '/api/v1/dish_sizes/{id}' do

    get 'get dish_types' do
      tags 'Dish Sizes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get dish_types' do
        let(:id)  { create(:dish_size).id }
        run_test!
      end
    end

    put 'Update a dish_types' do
      tags 'Dish Sizes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :dish_size, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'Dish Sizes updated' do
        let(:id)  { create(:dish_size).id }
        let(:dish_size) { {name: 'title'} }
        run_test!
      end

    end


    delete 'remove dish_types' do
      tags 'Dish Sizes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:dish_size).id }
        run_test!
      end
    end

  end
end
