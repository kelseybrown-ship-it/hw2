# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


class CreateSalespeople < ActiveRecord::Migration[7.1]
    def change
      create_table :salespeople do |t|
        t.string "first_name"
        t.string "last_name"
        t.string "email"
        t.timestamps
      end
    end
  end

  class CreateStudios < ActiveRecord::Migration[7.1]
    def change
      create_table :studios do |t|
        t.string "name"
        t.timestamps
      end
    end
  end

  class CreateMovies < ActiveRecord::Migration[7.1]
    def change
      create_table :movies do |t|
        t.string "title"
        t.INTEGER "year_released"
        t.string "rated"
        t.INTEGER "studio_id"
        t.timestamps
      end
    end
  end


  class CreateActors < ActiveRecord::Migration[7.1]
    def change
      create_table :actors do |t|
        t.string "name"
        t.timestamps
      end
    end
  end


  class CreateRoles < ActiveRecord::Migration[7.1]
    def change
      create_table :roles do |t|
        t.INTEGER "movie_id"
        t.INTEGER "actor_id"
        string "character_name"
        t.timestamps
      end
    end
  end

