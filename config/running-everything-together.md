# Running everything together

## First, I want to congratulate you 🎉

You did it! You installed and configured YAMS! Give yourself a good pat on the back - you've earned it! 🙇‍♂️

Now comes the fun part: Adding your shows/movies and watching everything work together like a well-oiled machine! 😎

## Radarr & Sonarr

These instructions work for both Radarr and Sonarr. To keep things simple, I'll show you with Radarr, but the process is super similar for TV shows!

Open Radarr at `http://{your-ip-address}:7878/` and click on "Add New" in the left menu. For this demo, I'll use "The Godfather" (because it's a classic!), but you can search for any movie you want.

Pro tip: For your first test, pick something popular - it'll be easier to find!

Click on the movie you want to download.

Now you can pick your quality preferences. If your movie is part of a collection (like The Godfather is), you can choose to download the whole series in the "Monitor" box. I'm going for the whole trilogy because, well, why not?

Finally, click "Add Movie"!

Head back to "Movies" and you'll see your selections.

Click on "Activity" to watch the magic happen - you can see everything downloading in real-time! 🪄

## qBittorrent

Want to see what's going on under the hood? Open qBittorrent at `http://{your-ip-address}:8081/` and you'll see your movies downloading!

This means everything is working perfectly! When downloads finish, Radarr will automatically organize them into the right folders.

## Media service

After your downloads finish, head over to your media service and… ta-da! 🎉 Your movies are right there waiting for you!

Open up a movie and look - subtitles are already there! That's Bazarr doing its thing! 🎯

You can even start watching right from your browser, with subtitles and everything.

## Your filesystem

Curious about how everything's organized? Check out your `/srv/media/movies` folder:

```
/srv/media/movies/
├── The Godfather (1972)
│   ├── The Godfather (1972).en.srt
│   ├── The Godfather (1972).es.srt
│   └── The Godfather (1972).mp4
├── The Godfather Part II (1974)
│   ├── The Godfather Part II (1974).en.srt
│   ├── The Godfather Part II (1974).es.srt
│   └── The Godfather Part II (1974).mp4
└── The Godfather Part III (1990)
    ├── The Godfather Part III (1990).en.srt
    ├── The Godfather Part III (1990).es.srt
    └── The Godfather Part III (1990).mp4
```

Not a fan of how things are named? No problem! You can always change the naming format in Radarr's or Sonarr's media management settings.
