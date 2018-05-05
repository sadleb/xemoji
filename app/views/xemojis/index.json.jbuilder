# Note: we want the array to be named, so we couldn't do this: json.array! @xemojis, partial: 'xemojis/xemoji', as: :xemoji
json.xemojis(@xemojis)  do |xemoji|
  json.partial! 'xemojis/xemoji', xemoji: xemoji
end

