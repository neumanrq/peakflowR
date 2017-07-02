# peakflowR

Measure and analyze your peakflow values over time

### How to run app locally

The following command will spawn a shiny application which is available
in your browser at `0.0.0.0:3333`

```shell
./run_local.sh
```

### How to deploy with heroku

```shell
heroku config:set BUILDPACK_URL=http://github.com/virtualstaticvoid/heroku-buildpack-r.git#heroku-16
```

