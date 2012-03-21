module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, opts={})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    opts[:size] = "#{opts[:size]}x#{opts[:size]}" if opts && opts.has_key?(:size)
    image_tag gravatar_url, {alt: user.name, class: "gravatar"}.merge(opts)
          #( size == nil ? {} : {size: "#{size}x#{size}"} ) )
  end
end
