# Sonarr

## What is Sonarr?

From their [wiki](https://wiki.servarr.com/sonarr):

> Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

In YAMS, Sonarr is your TV show manager - it's going to handle everything from downloads to organizing your episodes. Think of it as your personal TV assistant! 📺

## Initial configuration

In your browser, go to `http://{your-ip-address}:8989/`. Just like with Radarr, we'll start with some basic security settings.

- Select "Forms (Login Page)" as the "Authentication Method"
- In "Authentication Required" select "Disabled for Local Addresses" (so you can browse freely on your home network)

Create your username and password, then click save.

You'll see Sonarr's empty page. Don't mind those 3 system messages - we'll get to them later!

### Media management

Let's tell Sonarr how to handle our TV shows! Go to "Settings" and then "Media management". Here's what we need to do:

- Click on "Show Advanced" (it sounds scary but we'll keep it simple!)
- Check the "Rename Episodes" box
- Set up these naming formats:
  - "Standard Episode Format": `{Series Title} - S{season:00}E{episode:00} - {Episode Title}`
  - "Daily Episode Format": `{Series Title} - {Air-Date} - {Episode Title}`
  - "Anime Episode Format": `{Series Title} - S{season:00}E{episode:00} - {Episode Title}`
  - "Series Folder Format": `{Series TitleYear}`

Scroll down to "Root Folders" and click on "Add Root Folder".

Add the `/data/tvshows/` folder.

**Note:** Just like with Radarr, this path is inside the docker environment - it maps to your server's `/mediafolder/media/tvshows/` folder. Docker magic at work! ✨

Finally, click on "Save Changes".

### Download Clients

Time to connect Sonarr to our download tools! We'll link up with qBittorrent and SABnzbd.

#### qBittorrent Setup

In "Settings", go to "Download Clients" and click on the ➕ button.

Find and click on "qBittorrent" in the list.

Fill in these details:

- Name: qBittorrent (or whatever clever name you come up with!)
- Host: your server IP address (like `192.168.0.190`)
- Port: 8081
- Username: `admin`
- Password: your qBittorrent password

Hit that "Test" button - if everything's working, you'll see a happy green checkmark! ✅

All good? Click "Save". Your download client should now appear on the page.

#### SABnzbd Setup

Back in "Download Clients", click that ➕ button again.

This time, let's find and click on "SABnzbd".

Fill in these details:

- Name: SABnzbd (or something fun)
- Host: your server IP address (like `192.168.0.190`)
- Port: 8080
- API Key: your SABnzbd API key

Need to find your SABnzbd API key? No problem! Check SABnzbd settings under General > Security.

Another test time! Click "Test" - hopefully another green checkmark! ✅

If the test passed, hit "Save". You should now see both download clients ready to go.
