class LocationsController < ApplicationController
  def index
    @entries = @current_user.entries
    # binding.pry
    @markers = generate_markers
  end

  private

  def generate_markers
    @entries.select { |entry| entry.latitude.present? || entry.longitude.present? }.map do |entry|
      [entry.name, entry.latitude, entry.longitude]
    end.to_json.html_safe
  end
end