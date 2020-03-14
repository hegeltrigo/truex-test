require 'swagger_helper'

describe 'Option Types API', type: :request do
  path '/api/v1/option_types' do

    get 'get all dished' do
      tags 'Option Types'
      consumes 'application/json', 'application/xml'

      response '200', 'get all dish_types' do
        run_test!
      end

    end

    post 'Creates a dish_types' do
      tags 'Option Types'
      consumes 'application/json', 'application/xml'
      parameter name: :option_type, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '201', 'Option Types created' do
        let(:option_type) { create(:option_type) }
        run_test!
      end

    end
  end

  path '/api/v1/option_types/{id}' do

    get 'get dish_types' do
      tags 'Option Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get dish_types' do
        let(:id)  { create(:option_type).id }
        run_test!
      end
    end

    put 'Update a dish_types' do
      tags 'Option Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :option_type, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'Option Types updated' do
        let(:id)  { create(:option_type).id }
        let(:option_type) { {name: 'title'} }
        run_test!
      end

    end


    delete 'remove dish_types' do
      tags 'Option Types'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:option_type).id }
        run_test!
      end
    end

  end
end
