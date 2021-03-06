class Ife < ActiveRecord::Base
  # attr_accessible :state, :nameState, :district, :city, :nameCity, :start, :finish, :total

  def self.find_by_state_and_district_and_section(state, city, section)
    where(state: state).where(city: city).where("start <= #{section} AND finish >= #{section}")
  end
end
