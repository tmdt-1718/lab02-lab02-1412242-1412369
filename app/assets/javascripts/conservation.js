
$(document).ready(function(){
  console.log(window.location.href.split('/')[6])
  $(`.list-group-item#${window.location.href.split('/')[6]}`).addClass("active")
  $(`.conversation-item`).click(function(){
    alert("hello")
  })
})
