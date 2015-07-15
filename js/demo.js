var banners = ['/images/1.gif','/images/2.gif','/images/3.gif','/images/4.gif','/images/5.gif','/images/6.gif'];

var current = 0;
function startDemo() {
    nextAnimation();
    // call next animation every 4 seconds
    setInterval('nextAnimation()', 4000);
}
function nextAnimation() {
    current = (current+1) % 6;
    $('#screenshot-image').attr('src', banners[current]);
}

// dont start until the page loads
$(function() {
  setTimeout('startDemo()', 300);
});
