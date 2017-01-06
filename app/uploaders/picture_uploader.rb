# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    "/images/fallback/" + [version_name, "logo.jpg"].compact.join('_')
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end