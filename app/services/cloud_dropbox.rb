class CloudDropbox
  # def dropbox
  #   @dropbox = Dropbox::API::Client.new(:token  => ENV["DROPBOX_TOKEN"], :secret => ENV["DROPBOX_SECRET"])
  #   self
  # end 

  def box
    session = RubyBox::Session.new({
      client_id: ENV["BOX_CLIENT_ID"],
      client_secret: ENV["BOX_CLIENT_SECRET"],
      access_token: ENV["BOX_TOKEN"]
    })
    @box = RubyBox::Client.new(session)
  end

  # def ls(directory)
  #   @dropbox.ls directory
  # end

  # def thumb(path)
  #   object = LinkThumbnailer.generate(path)
  #   object.images.first.src.to_s
  # end
end

