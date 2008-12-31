class Picture < ActiveRecord::Base
    #check that the fields hace data in them
    validates_presence_of :title, :description, :one_sheet_url
    validates_format_of :one_sheet_url, 
        :with   => %r{\.(gif|jpg|jpeg|png)$}i,
        :message => "tiene que ser una URL de una imagen válida"
end
