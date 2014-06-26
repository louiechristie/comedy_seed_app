jQuery ->
  new ImageCropper()

class ImageCropper
  constructor: ->
    $('#cropbox').Jcrop
      aspectRatio: 1
      setSelect: [0, 0, 600, 600]
      onSelect: @update
      onChange: @update

  update: (coords) =>
    $('#comedian_crop_x').val(coords.x)
    $('#comedian_crop_y').val(coords.y)
    $('#comedian_crop_w').val(coords.w)
    $('#comedian_crop_h').val(coords.h)
