module Api 
  module v1
    class ArticlesControllers < ApplicationController
      def index
        articles = Article.order('created_at DESC');
        render jason: {status: 'SUCCESS', message: 'Loaded articles', data: articles}, status: ok
      end
    end
  end
end
