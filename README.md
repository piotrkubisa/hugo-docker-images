# Docker images for Hugo - static site generator

Image name | Description 
---------- | -----------
[with-pygments](with-pygments/README.md) | ...
[docuapi-bundler](docuapi-bundler/README.md) | Comes with pre-installed dependencies for `bundler.go`. Based on `with-pygments` image. 

If you are looking for more details of specified docker image then I recommend navigating to directory where `Dockerfile` are located.

## What is purpose of using these Docker images?

- Simplify installation of `go`, `hugo`, `pygments` and other dependencies which can be used during deployment or daily development of static site page.
- Free of charge upgrades. Pull new docker image and execute VM (no broken dependency, easy rollback), simple as that.
- Re-usable. Install once, run multiple times.
- Isolated environment.
- CI-friendly.
- Small images build upon `golang:latest` and recent `hugo` for best performance and experience.

## License

MIT License

Copyright (c) 2016 Piotr Kubisa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
