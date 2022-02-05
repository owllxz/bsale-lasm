module Api
    module V1
        class CategorysController < ApplicationController
            def index
                categorys = Category.all
                render json: {status: 'SUCCESS', message: 'Loaded categorys', data: categorys}, status: :ok
            end
        end
    end
end