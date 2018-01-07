class AddFilmToOpinions < ActiveRecord::Migration[5.1]
  def change
    add_reference :opinions, :film, foreign_key: true
  end
end
