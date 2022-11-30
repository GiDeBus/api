class ArticlesController < ApplicationController
include Paginable

  def index
    paginated = paginate(Article.recent)
    render_collection(paginated)
    options = { meta: paginated.meta.to_h, links: paginated.links.to_h }
    render json: serializer.new(paginated.items, options), status: :ok
  end

  def show
    article = Article.find(params[:id])
    render json: serializer.new(article)
  end

  def serializer
    ArticleSerializer
  end

end
