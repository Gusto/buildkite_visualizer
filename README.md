# buidkite_visualizer

Visualize a Buildkite Build like a network tab in your favorite browser

How to do it?
Create a API token from [Buildkite](https://buildkite.com/user/api-access-tokens/new) with `read builds` permision.

And set it in the terminal

```
export BUILDKITE_TOKEN=real_token
curl -s -H "Authorization: Bearer $BUILDKITE_TOKEN" https://api.buildkite.com/v2/organizations/gusto/pipelines/zenpayroll/builds/257470?include_retried_jobs=true | ./visualize_buildkite.rb > /tmp/build.html && open /tmp/build.html
```
