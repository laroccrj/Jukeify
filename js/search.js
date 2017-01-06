var Templates = new Array();

$(function(){

  var tracks = $("#tracks");
  var tpls = $(".template").toArray();
  tpls.forEach( function(element) {
    Templates[element.id] = element.innerHTML;
  });

  $('#submitSearch').click(function(){
    var searchString = $('#searchString').val();
    searchString = searchString.replace(' ', '%20');

    $.ajax({
      url: 'https://api.spotify.com/v1/search?q=' + searchString + '&type=track',
      dataType: 'json',
      success: function(response) {
        tracks.html('');
        response.tracks.items.forEach(function(element) {
          tracks.append(trackDiv(element));
        });
      }
    })
  })
});

function trackDiv(track) {

  var trackName = track.name;
  var albumName = track.album.name;
  var albumArt300x300 = track.album.images[2].url;
  var artists = track.artists;

  var tplData = {
    name : trackName,
    artist : artists[0].name,
    album : albumName,
    albumArt : albumArt300x300
  }

  var div = Mustache.to_html(Templates['track'], tplData);
  return div;
}