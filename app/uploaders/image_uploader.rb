class ImageUploader < CarrierWave::Uploader::Base
  # リサイズしたり画像形式を変更するのに必要
  include CarrierWave::RMagick

  if Rails.env.development?
    storage :file
  elsif Rails.env.test?
    storage :file
  else
    storage :fog
  end

  # S3のディレクトリ名
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # 画像の上限を100x100にする
  process resize_to_fit: [400, 400]

  # 保存形式をJPGにする
  process convert: 'jpg'

  # サムネイルサイズ
  version :thumb do
    process resize_to_fit: [300, 300]
  end

  version :thumb23 do
    process resize_to_fit: [200, 300]
  end

  version :profile_image do
    process resize_to_fit: [80, 80]
  end

  version :profile_top do
    process resize_to_fill: [40, 40]
  end

  # デフォルト画像の設定
  def default_url
    'noimage.png'
  end

  # jpg,jpeg,gif,pngしか受け付けない
  def extension_white_list
    %w[jpg jpeg gif png]
  end

  # 拡張子が同じでないとGIFをJPGとかにコンバートできないので、ファイル名を変更
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end

  # ファイル名を日付にするとタイミングのせいでサムネイル名がずれる
  # ファイル名はランダムで一意になる
  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
