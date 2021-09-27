// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

window.addEventListener("turbolinks:load", function(){

  const guideButton = document.getElementById("guide")
  const text = document.getElementById("text")

  guideButton.addEventListener('mouseover', function(){
    guideButton.setAttribute("style", "opacity: 0.6;")
  })

  guideButton.addEventListener('mouseout', function(){
    guideButton.removeAttribute("style", "opacity: 1.0;")
  })
  
  guideButton.addEventListener('click', function() {
    if (text.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      text.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      text.setAttribute("style", "display:block;")
    }
  })
})