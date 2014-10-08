class LocationsController < ApplicationController
  def index
    @entries = Entry.all
    @markers = generate_markers
  end

  private

  def generate_markers
    @entries.map { |entry| [entry.name, entry.latitude, entry.longitude] }.to_json.html_safe
  end
end