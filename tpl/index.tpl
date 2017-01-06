<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="js/mustache.js"></script>
    <script src="js/search.js"></script>
    <link rel="stylesheet" type="text/css" href="css/track.css">
</head>
<body>
<div>
    Playlist Id: <?= $playlistId ?>
</div>
<div>
    <input type="text" id="searchString"/>
    <button id="submitSearch">Search</button>
</div>
<div id="body">
    <div id="tracks"></div>
</div>
</body>
</html>
<div id="templates" hidden>
    <div id="track" class="template">
        <div class = 'track'>
            <div class="art"><img src="{{{ albumArt }}}" /></div>
            <div class="content">
                <div class="title">
                    <div class="name">{{{ name }}}</div>
                    <div class="info">
                        <div class="artist">{{{ artist }}}</div>
                        <div class="album">{{{ album }}}</div>
                    </div>
                </div>
                <div class="add">
                    <button>Add</button>
                </div>
            </div>
        </div>
    </div>
</div>