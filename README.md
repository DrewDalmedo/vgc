# VGC
A video game collection organization web app, built in Sinatra.

## About

## Usage
Currently, there is only one way to use this app: you need to run a local development server.

Before you start, make sure you have ruby and bundler installed. If you don't, see [Ruby's site](https://www.ruby-lang.org/en/) first for how to install ruby, and then see [Bundler's site](https://bundler.io/) for how to install bundler.

First, clone the repository:
```
$ git clone https://github.com/DrewDalmedo/vgc.git
```

Next, `cd` into the vgc directory and run `bundle install` to install the app's dependencies:
```
$ cd vgc && bundle install
```

Finally, run `shotgun` and follow the IP link it gives you:
```
$ shotgun
```
NOTE: the IP address should be the first line you see after running `shotgun`, and should look something like `127.0.0.1:9393`