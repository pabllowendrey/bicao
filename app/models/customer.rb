class Customer < ApplicationRecord
    validates :name, :cpf, :fone, :email, presence: true
end
