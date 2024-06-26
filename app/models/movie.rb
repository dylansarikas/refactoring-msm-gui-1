# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
    def director
        if the_id = self.director_id
            matching_directors = Director.find(the_id)
        else
            
        end
    end

    def characters
        the_id = self.id
        matching_actors = Character.where({ :movie_id => the_id})
    end
end
