class Movie < ActiveRecord::Base
    @all_ratings = ['G', 'PG', 'PG-13', 'R']
    def self.sorting(sort)
     if sort==nil
      Movie
     else
      Movie.order(sort)
     end
    end
    
    def self.all_ratings 
     @all_ratings
    end
    
    def self.rating(rating)
     Movie.where('rating in (?)', rating)
    end
end