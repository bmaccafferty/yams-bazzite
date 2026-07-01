# Radarr

## What is Radarr?

From their [wiki](https://wiki.servarr.com/radarr):

> Radarr is a movie collection manager for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new movies and will interface with clients and indexers to grab, sort, and rename them. It can also be configured to automatically upgrade the quality of existing files in the library when a better quality format becomes available.

In YAMS, Radarr is going to manage all our movies: download them, sort them, and keep everything organized. It's like having your own personal movie butler! 🎬

## Initial configuration

In your browser, go to `http://{your-ip-address}:7878/`. First up, we need to set up some basic security.

- Select "Forms (Login Page)" as the "Authentication Method"
- In "Authentication Required" select "Disabled for Local Addresses" (this way you won't need to login when you're at home)

Fill in your username and password, then click on save.

You'll see Radarr's empty page. Don't worry about those 3 messages in the system tab - we'll deal with them soon!

### Media management

First things first - let's tell Radarr how to handle our movies. Go to "Settings" and then "Media management". On this screen:

- Click on "Show Advanced" (don't worry, we'll keep it simple!)
- Check the "Rename Movies" box
- Change "Standard Movie Format" to `{Movie Title} ({Release Year})`

At the bottom of the same screen, go to "Root folders" and click on "Add Root Folder".

Now add the `/data/movies/` folder.

**Note:** This isn't actually on your filesystem! The `/data/movies/` folder exists inside the docker environment and maps to your server's `/mediafolder/media/movies/` folder. Magic! ✨

Finally, click on "Save Changes".

### Download Clients

Time to connect Radarr to our download tools! This is where we'll link up with qBittorrent and SABnzbd.

#### qBittorrent Setup

In "Settings", go to "Download Clients" and click on the ➕ button.

On the "Add Download Client" screen, scroll down and click on "qBittorrent".

Fill in these details:

- Name: qBittorrent (or whatever you want to call it!)
- Host: your server IP address (like `192.168.0.190`)
- Port: 8081
- Username: `admin`
- Password: your qBittorrent password

Click that "Test" button at the bottom - if everything's good, you'll see a nice green checkmark! ✅

If the test passed, click "Save". Your download client should now show up on the page.

#### SABnzbd Setup

Back in "Download Clients", click that ➕ button again.

This time, scroll down and pick "SABnzbd".

Fill in these details:

- Name: SABnzbd (or any name you like)
- Host: your server IP address (like `192.168.0.190`)
- Port: 8080
- API Key: your SABnzbd API key

Don't have your SABnzbd API key handy? No worries! You can find it in SABnzbd settings under General > Security.

Time for another test! Click that "Test" button - hopefully you'll see another green checkmark! ✅

If the test worked, hit "Save". You should now see both download clients on the page.
