window.update = (stream) ->
  document.querySelector('video').src = stream.url

window.hasGetUserMedia = () ->
  !!(navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia)

window.navigator.getUserMedia  = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia

window.video = document.querySelector('video')

window.errorCallback = (e) ->
  console.log('Reeeejected!', e)

if navigator.getUserMedia
  alert "OK"
  window.navigator.getUserMedia({audio: false, video: true}, (stream) ->
    video.src = window.URL.createObjectURL(stream)
  , window.errorCallback)
else
  alert "false"
  video.src = 'somevideo.webm'

