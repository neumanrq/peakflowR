# peakflowR

Shiny web application that mangles a CSV file for humans that need
to keep track for their asthma data.

### How to run app

```shell
./run_local.sh
```
… and visit `localhost:3333` in your browser.

### If necessary: How to deploy with heroku

```shell
heroku config:set BUILDPACK_URL=http://github.com/virtualstaticvoid/heroku-buildpack-r.git#heroku-16
```

