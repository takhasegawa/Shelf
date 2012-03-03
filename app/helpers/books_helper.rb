# -*- encoding: UTF-8 -*-

module BooksHelper
  
  def check_inout_link(book)  
    if book.checked_out?
      link_to("返却", [:check_in, book] , :method => :put)
    else
      link_to("貸出", [:check_out, book] , :method => :put)    
    end  
  end
  
  def  category_options
    options = [ [ "----", nil ] ]
    Category.all.each do |c|
      options << [ c.name, c.id ]
    end
    return options
  end
  
end
