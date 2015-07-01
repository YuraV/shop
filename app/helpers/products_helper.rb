module ProductsHelper

  def categories
    @category ||= Category.all.collect {|c| [c.title, c.id]}
  end
end
