function pullDown() {
  const pullDownButton = document.getElementsByClassName("edit_btn")
  const pullDownParents = document.getElementsByClassName("show-lists")
  const pullDownChild = document.getElementsByClassName("pull-down-list")
  
    pullDownButton.addEventListener('mouseover', function(){
    pullDownButton.setAttribute("style", "opacity: 0.6;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    pullDownButton.removeAttribute("style", "opacity: 1.0;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      // pullDownParentsにdisplay:block;が付与されている場合（つまり表示されている時）実行される
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      // pullDownParentsにdisplay:block;が付与されていない場合（つまり非表示の時）実行される
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownChild.forEach(function(list) {
    list.addEventListener('click', function() {

    })
  })
}

window.addEventListener('load', pullDown)