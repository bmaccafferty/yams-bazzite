# qBittorrent

## What is qBitorrent?

From their [website](https://www.qbittorrent.org/):

> The qBittorrent project aims to provide an open-source software alternative to µTorrent.

So, just like µTorrent, qBitorrent is a torrent downloader. Pretty easy! 😎

## Initial configuration

First things first - if you set up a VPN during YAMS installation (which you really should!), qBittorrent should already be configured to use it. Let's verify everything is working correctly.

In your terminal, run:

```bash
yams check-vpn
```

You should see output like this:

```bash
Getting your qBittorrent IP...
<qBittorrent IP>
Your country in qBittorrent is Brazil

Getting your IP...
<your local IP>
Your local IP country is North Korea

Your IPs are different. qBittorrent is working as expected! ✅
```

If the check fails, you'll see something like:

```bash
Getting your qBittorrent IP...
<your local IP>
Your country in qBittorrent is North Korea

Getting your IP...
<your local IP>
Your local IP country is North Korea

Your IPs are the same! qBittorrent is NOT working! ⚠️
```

If your VPN check failed, head over to [VPN Configuration](#) to fix it. **You should always use a VPN when downloading torrents!**

### Setting up qBittorrent

Let's get qBittorrent configured! In your terminal, check the qBittorrent logs to get your initial login credentials:

```sh
docker logs qbittorrent
```

You'll see the qBittorrent username and password in the logs:

```
qbittorrent  | ******** Information ********
qbittorrent  | To control qBittorrent, access the WebUI at: http://localhost:8081
qbittorrent  | The WebUI administrator username is: admin
qbittorrent  | The WebUI administrator password was not set. A temporary password is provided for this session: FBFsKbfbD
qbittorrent  | You should set your own password in program preferences.
qbittorrent  | Connection to localhost (::1) 8081 port [tcp/tproxy] succeeded!
```

In your browser, go to `http://{your-ip-address}:8081/` and you'll see qBittorrent's admin page. Log in with:

```
username: admin
password: your-temporary-password-from-the-logs
```

After logging in, you'll see the empty qBittorrent window. Click on the gear icon in the top right to enter the settings.

### Configuring BitTorrent Settings

First, go to the "Downloads" tab and set the "Default Save Path" to `/data/downloads/torrents/`.

Then, go to the "BitTorrent" tab and check the "When ratio reaches" checkbox. Set it to 0.

### Is this a dick move?

Yes. 😅

The BitTorrent protocol works by sharing (seeding) files across the network. Setting the seeding limit to zero means "Share the torrent **until** I've finished downloading." You'll still share while downloading, but once complete, the torrent stops and waits for Sonarr/Radarr to pick it up.

For this tutorial we'll leave it at 0, but feel free to be less selfish later! **Some torrent services monitor the ratio to prevent abuse, and restrict accounts with low ratios. Make sure you respect these constraints to keep your access to these platforms.**

### Configuring Web UI Settings

Next, go to the "Web UI" tab. Here you can set it to skip password authentication when accessing from your local network. This is optional but recommended.

While you're here, change that temporary password to something more secure.

### Configuring Network Settings

On the "Advanced" tab, make sure your Network interface is set to `tun0`. This ensures qBittorrent always uses the VPN connection and stops if the VPN goes down.

Finally, scroll to the bottom and click "Save".

### Port Forwarding 🚀

Want faster downloads? YAMS supports automatic port forwarding!

## Final VPN Check

Let's do one last VPN check to make sure everything's working:

```bash
yams check-vpn
```

You should see your qBittorrent IP is different from your local IP. If not, head over to VPN Configuration to fix it.
