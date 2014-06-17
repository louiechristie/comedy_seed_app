module ApplicationHelper

  def youtube_embed(youtube_url)
    return nil if youtube_url == nil

    # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end

    %Q{<div class="flex-video">
          <iframe src="http://www.youtube.com/embed/#{youtube_id}" frameborder="0" allowfullscreen></iframe>
    </div>}

  end

  def stars(number)
    number.times.map {image_tag 'stars.gif'}.join
  end
  
end
