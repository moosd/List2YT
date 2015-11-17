# Anonymous youtube playlists

## The issue
I often come across playlists on spotify on the internet but I do not have a spotify account, nor do I wish to install their closed-source software or use their flash-based web player. Yet they appear to bar me from accessing the names of the collections of songs someone else has put together! I came across https://spotlistr.herokuapp.com/#/export/spotify-playlist and this gives me the names of the songs on the playlist.

But how do I now listen to them without spotify?

## The solution
Youtube has lots of songs and I don't need to sign in to access them. So I threw together this script to go through a list of names, search them, extract the youtube id and construct a playlist out of them that I can then watch.

Copy and paste the list of song names (each name separated by a new line) into a file called `list` and run

```
./process.sh
```

or if you have a file with each file in a list:

```
./process.sh <filename>
```

to go through, find the youtube videos and process them into an index.html file. Open index.html in any browser and leave in a background tab :)

## Random lists of youtube videos
This also works for a list of any random youtube videos. If you have a file, `rawlist`, containing urls for all your youtube videos, parse them into index.html like this:

```
./rawlist.sh
```

or for an arbitrary filename,

```
./rawlist.sh <filename>
```

Now you can just open index.html in any browser and the videos will play one after another.
