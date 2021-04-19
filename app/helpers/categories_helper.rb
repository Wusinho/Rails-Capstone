module CategoriesHelper

  def carousel(article)
    if article.nil?
      render 'default'

    else
      render 'carousel'

    end
  end

 
def loop(categories)
  return if categories.nil?
  
  categories.each do |j|
    if  j.articles.ordered_by_most_recent.first
      #content_tag(:div, class:['col-3', 'py-3', 'd-flex', 'flex-column', 'justify-content-between', 'text-white'], style: "background: url( j.articles.ordered_by_most_recent.first.image_url); background-size : cover " )
      link_to( j.name, category_path(j.id), class:['text-warning'] )
      
    end
  end


end

  

  


  

end
