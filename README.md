gifhub ![Maintenance Status](https://img.shields.io/badge/maintenance-retired-red.svg)
======

A hub for all the gifs, searchable by keyword. I know...

## Origins

Ethan (@beep) Marcotte's [bukk.it](http://bukk.it) is great, but it's hard to 
search and sometimes [a bit slow](http://storify.com/olivierlacan/gifhub-inception). 
And I've always wanted a good tool to search high quality GIFs out there.

## Features

* Search for GIFs by emotion, or any keyword
* Display animated thumbnails
* Provide a filtered search
* Display link to original source (bukk.it, etc)
* Cache GIFs on S3/CloudFront for speedy display

## Societal Benefits

* Help people spend less time searching for or making animated GIFs.
* Give people with poor emotional skills the ability to express themselves
exclusively with pop culture references.

## Flow

1. Enter GIF URL
4. Origin URL is saved
5. Entry can be tagged by emotion or keyword

## Models
1. Gif
2. Tag (assoc. with Gif via Join table 'gifs_tags')

## License

