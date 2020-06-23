# buidkite_visualizer
Visualize a Buildkite Build
Instruction:



```
export BUILDKITE_TOKEN=real_token
curl -s -H "Authorization: Bearer $BUILDKITE_TOKEN" https://api.buildkite.com/v2/organizations/gusto/pipelines/zenpayroll/builds/257470?include_retried_jobs=true | ././visualize_buildkite.rb > /tmp/build.html && open /tmp/build.html
```
