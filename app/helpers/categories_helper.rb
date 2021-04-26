module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end

  def nav_category(_category)
    render 'shared/category_menu'
  end
end
