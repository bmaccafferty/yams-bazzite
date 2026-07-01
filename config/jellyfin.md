# Jellyfin

## What is Jellyfin?

From their [website](https://jellyfin.org/):

> Jellyfin is the volunteer-built media solution that puts you in control of your media. Stream to any device from your own server, with no strings attached. Your media, your server, your way.

In YAMS, Jellyfin is going to be your personal Netflix! 🍿 It's 100% open source and lets you stream your TV shows and movies to any device. Best part? No monthly fees!

## Initial configuration

In your browser, go to `http://{your-ip-address}:8096/` and you'll see Jellyfin's setup page.

First things first - pick your display language and click "Next".

Time to create your first user! This will be your admin account, so make it secure. When you're done, click "Next".

Now we're at the "Setup Media Libraries" page. Click on "New Library" - let's tell Jellyfin where to find all your media! 📚

### Setting up your TV Shows library

On the "New Library" modal, pick "Shows" as your Content type and click the big ➕ sign next to "Folders".

In "Select Path", choose the `/data/tvshows` folder and click "Ok".

**Magic Container Note:** 🎩 The `/data/tvshows/` folder isn't actually on your filesystem - it's a special path inside the docker environment that maps to your server's `/mediafolder/media/tvshows/` folder!

You should see your new folder all ready to go in the modal.

Now set your preferred metadata language. The other default settings are fine, but feel free to tweak them if you want to get fancy!

Happy with the settings? Click "Ok". Your TV Shows library is now added! 📺

### Setting up your Movies library

Time for round two! Click that "New Library" button again.

This time, pick "Movies" as your Content type and click the ➕ next to "Folders".

Choose the `/data/movies` folder and click "Ok".

**More Container Magic:** 🎩✨ Just like before, `/data/movies/` is a special docker path that maps to your server's `/mediafolder/media/movies/` folder!

You should see your movies folder ready to go.

Set your preferred metadata language again. Default settings are still your friend here!

Looking good? Click "Ok". Your Movies library is now added! 🎬

Time to move forward - click that "Next" button!

### Final Setup Steps

On the "Preferred Metadata Language" page, pick your favorite language and country. Then click "Next".

For the "Set up Remote Access" page, let's keep things simple - disable "Allow remote connections to this server" and click "Next".

You're done! Click "Finish" to head to your shiny new Jellyfin dashboard. 🎉

### Logging in to Jellyfin

Time to test drive your new setup! On the login screen, use the username and password you created earlier.

And there it is! Your very own streaming service homepage! 🌟
