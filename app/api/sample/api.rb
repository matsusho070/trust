module Sample
  class Api < Grape::API
    version 'v1', using: :header, vendor: 'sample'
    format :json
    prefix :api

    resource :users do
      desc 'Return users.'
      get :get do
        User.limit(20)
      end

      desc 'Update a user'
      params do
        requires :id, type: Integer, desc: 'User ID'
        requires :name, type: String, desc: 'New name'
      end
     put :update do
        user = User.find(params[:id])
        user.name = params[:name]
        user.save
      end
    end
  end
end
