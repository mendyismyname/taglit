class CloudDropbox
  
  def dropbox
    @dropbox = Dropbox::API::Client.new(:token  => ENV["DROPBOX_TOKEN"], :secret => ENV["DROPBOX_SECRET"])
    self
  end 

  def ls(directory)
    @dropbox.ls directory
  end

  def thumb(path)
    object = LinkThumbnailer.generate(path)
    object.images.first.src.to_s
  end
end

