Transcoder
==========

The [tested-transcoder](https://github.com/eseglem/tested-transcoder) provided an automated interface with the excellent Don Melton bash scripts, which are now no longer maintained.
Instead Don Melton now maintains a set of ruby based scripts [video_transcoding](https://github.com/donmelton/video_transcoding).

This docker image takes the automation from the `tested-transcoder` and interfaces it with the `video_transcoding` interface.

Running the container
---------------------

Running the container is as simple as

    $ docker run -ti -v ~/Video/transcoder:/media/transcoder malramsay/transcoder

This will set up four folders in the transcoder directory if they are not already present

* `input` for the input files to convert
* `output` for the completed transcodes
* `completed-originals`
* `work` where the current transcode takes place
