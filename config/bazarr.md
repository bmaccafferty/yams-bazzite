# Bazarr

## What is Bazarr?

From their [website](https://www.bazarr.media/):

> Bazarr is a companion application to Sonarr and Radarr that manages and downloads subtitles based on your requirements.

In YAMS, Bazarr is your subtitle superstar! 🌟 It's going to download subtitles in any language you choose, sort them, and put them right where Emby/Jellyfin/Plex can find them. No more hunting for subtitles manually!

## Initial Configuration

In your browser, go to `http://{your-ip-address}:6767/` and you'll see Bazarr's settings page.

The default settings here are fine - no need to change anything yet!

### Languages

On the left side menu, click on "Languages". This is where the fun begins! 🎬

In the "Languages Filter" box, pick all the languages you want subtitles for. For this tutorial, I'm going with:

- `English` (because why not?)
- `Spanish` (¿por qué no?)
- `Latin American Spanish` (different flavor, same great taste!)

After choosing your languages, click on "Add New Profile"

In the "Edit Languages Profile" modal:

1. Give your profile a name (anything you want!)
2. Click on "Add Language"
3. **Important:** Click "Add Language" once for EACH language you picked earlier!

Since I picked 3 languages earlier, I need to click "Add Language" three times. Math! 🧮

When you're done, click "Save" at the bottom.

Back on the "Languages" page, set your new profile as the default for both Series and Movies.

Happy with how it looks? Hit "Save" at the top of the page!

### Providers

Time to tell Bazarr where to find those subtitles! Click on "Providers" in the left menu, then click that big ➕ sign.

You'll see a HUGE list of providers - and they even include descriptions! How thoughtful! 📚

For this tutorial, we'll just add [OpenSubtitles.org](https://www.opensubtitles.org/en/search/subs), but feel free to add more later! The more providers you have, the better chance of finding perfect subtitles.

Some providers (including OpenSubtitles.org) need a username and password. If you don't have an account yet, go ahead and create one - I'll wait! ⏳

Got your login info? Great! Enter it and click "Save".

Now you'll see OpenSubtitles.org in your providers list! Click "Save" at the top of the page if you're happy with the changes.

### Subtitles

Click on "Subtitles" in the left menu and scroll down to "Performance / Optimization".

First thing to do: Disable "Use Embedded Subtitles". We want our subtitles free-range, not caged! 🐓

A bit further down, you'll find "Post-Processing". Enable these options:

- "Encode Subtitles to UTF8" (keeps everything readable)
- "Hearing Impaired" (removes those [DOOR CREAKS] descriptions)
- "Remove Tags" (cleans up formatting)
- "OCR Fixes" (fixes common scanning errors)
- "Common Fixes" (fixes… common stuff! 😅)
- "Fix Uppercase" (NO MORE SHOUTING IN SUBTITLES)

Now scroll aaaaaall the way to the bottom and enable:

- "Automatic Subtitles Synchronization"
- Set both "Series Score Threshold" and "Movies Score Threshold" to 50

Why 50? I've found it's a good balance - Bazarr can still find good subtitles but won't use terrible ones. Feel free to adjust this if you want to be more or less picky!

Happy with your settings? Hit "Save" at the top!

### Connecting to Sonarr

Time to link Bazarr with Sonarr! First, we need Sonarr's API key.

Head to `http://{your-ip-address}:8989/settings/general` and find the API Key under "Security".

Copy that key and keep it safe!

Back in Bazarr, click on "Sonarr" in the left menu.

By default, Sonarr is disabled. Let's fix that! Enable Sonarr and you'll see lots of new options. Don't panic - you only need to change a few:

- Address: set to `sonarr`
- API Key: paste in Sonarr's API Key
- Click "Test"

If everything's working, you'll see your Sonarr version on the button! 🎉

Click "Save" at the top of the page to finish up.

Magic time! The "Series" section should appear in your left menu! ✨

### Connecting to Radarr

Now let's connect to Radarr! First step: get that API key.

Go to `http://{your-ip-address}:7878/settings/general` and find the API Key under "Security".

Copy that key and keep it handy!

Back in Bazarr, click "Radarr" in the left menu.

Just like with Sonarr, Radarr is disabled by default. Enable it and fill in:

- Address: set to `radarr`
- API Key: paste in Radarr's API Key
- Click "Test"

If the test works, you'll see your Radarr version on the button! 🎯

Click "Save" at the top to wrap things up.

More magic! The "Movies" section appears in your left menu! ✨
