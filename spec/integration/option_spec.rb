require 'swagger_helper'

describe 'options API', type: :request do
  path '/api/v1/options' do

    get 'get all option' do
      tags 'options'
      consumes 'application/json', 'application/xml'

      response '200', 'get all options' do
        run_test!
      end

    end

    post 'Creates a options' do
      tags 'options'
      consumes 'application/json', 'application/xml'
      parameter name: :option, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '201', 'options created' do
        let(:option) { create(:option) }
        run_test!
      end

    end
  end

  path '/api/v1/options/{id}' do

    get 'get options' do
      tags 'options'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer


      response '200', 'get options' do
        let(:id)  { create(:option).id }
        run_test!
      end
    end

    put 'Update a options' do
      tags 'options'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :integer
      parameter name: :option, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string }
        }
      }

      response '200', 'options updated' do
        let(:id)  { create(:option).id }
        let(:option) { {name: 'title'} }
        run_test!
      end

    end


    delete 'remove options' do
      tags 'options'
      consumes 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '204', 'authenticated' do
        let(:id)  { create(:option).id }
        run_test!
      end
    end

  end
end
