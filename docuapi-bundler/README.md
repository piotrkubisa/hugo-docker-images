# Docker image for Bep's poor man go bundler

| Docker Hub |
| ---------- |
| http://..  |

##  Image description

Provides following:

* `go`, with additional packages:
    * `github.com/tdewolff/minify`
    * `github.com/tdewolff/minify/js`
    * `github.com/termie/go-shutil`
    * `github.com/wellington/go-libsass` (when building this docker image go-libsass may took few minutes to compile libsass C/C++ code with gcc which also requires some RAM and computing power).
* `hugo`
* `python3-pygments`

Size: ~80.4 MB (depends on `piotrkubisa/hugo-with-pygments` which is approx. 59.0 MB and `golang:latest` - approx. 673.9 MB).

## Usage

// TODO