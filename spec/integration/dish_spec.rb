require 'swagger_helper'

describe 'Dishes API', type: :request do
  path '/api/v1/dishes' do

    get 'get all dished' do
      tags 'Dishes'
      consumes 'application/json', 'application/xml'

      response '200', 'get all dishes' do
        run_test!
      end

    end

    post 'Creates a dishes' do
      tags 'Dishes'
      consumes 'application/json', 'application/xml'
      parameter name: :dish, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '201', 'dishes created' do
        let(:dish) { create(:dish) }
        run_test!
      end

    end
  end

  path '/api/v1/dishes/{id}' do

    get 'get dishes' do
      tags 'Dishes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get dishes' do
        let(:id)  { create(:dish).id }
        run_test!
      end
    end

    put 'Update a dishes' do
      tags 'Dishes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :dish, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'dishes updated' do
        let(:id)  { create(:dish).id }
        let(:dish) { {name: 'title'} }
        run_test!
      end

    end


    delete 'remove dishes' do
      tags 'Dishes'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:dish).id }
        run_test!
      end
    end

  end
end
