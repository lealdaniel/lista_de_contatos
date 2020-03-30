class Contact < ApplicationRecord
   
   validates :name, presence: true, length: { maximum: 50}
   validates :phone, presence: true 

   belongs_to :user
   # onde fica o belongs_to, fica a chave estrangeira
   

end
