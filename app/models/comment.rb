class Comment < ApplicationRecord

    belongs_to :user
    # Manque la validation sur le contenu
end
