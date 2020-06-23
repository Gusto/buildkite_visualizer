# buidkite_visualizer

Visualize a Buildkite steps like a network tab in your favorite browser from [API response](https://buildkite.com/docs/apis/rest-api/builds#get-a-build) 

How to use it?
* Create a API token from [Buildkite](https://buildkite.com/user/api-access-tokens/new) with `read builds` permision.

* And set it in the terminal

```
export BUILDKITE_TOKEN=real_token
export BUIKDKITE_ORG=your_org
export BUILDKITE_PIPELINE=your_pipeline
export BUILD_ID=257470
export BUILD_URL="https://api.buildkite.com/v2/organizations/$BUILDKITE_ORG/pipelines/$BUILDKITE_PIPELINE/builds/$BUILD_ID?include_retried_jobs=true"
```
* Generate the HTML content and view it. Oneliner example:

```
curl -s -H "Authorization: Bearer $BUILDKITE_TOKEN" $BUILD_URL | ./visualize_buildkite.rb > /tmp/build-$BUILD_ID.html && open /tmp/build-$BUILD_ID.html
```
