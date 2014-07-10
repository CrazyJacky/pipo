class RecreateOldThumbnails < ActiveRecord::Migration
  def change
  end
  def up
    Pin.all.each { |p| p.image.recreate_versions! if p.image}
  end
  def down

  end
end
