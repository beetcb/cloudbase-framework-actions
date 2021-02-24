A tiny [**github action**](https://docs.github.com/en/actions/creating-actions/creating-a-composite-run-steps-action) which can help you deploy your app to [tencent-cloudbase](https://www.cloudbase.net/) using the awesome [cloudbase-framework](https://github.com/Tencent/cloudbase-framework)

Actions secrets needed:

- `secretId`
- `secretKey`
- `envId`

Configuration needed(?):

- `cloudbaserc.json`: see documentation [here](https://docs.cloudbase.net/framework/config.html#xiang-mu-xin-xi)(If you already have one, don't bother configuring it)

```yml
name: 'deploy-test'
on:
  # Tigger on push to github
  push:
  watch:
    # Test on star
    types: [started]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Pull codebase
        uses: actions/checkout@v2

      - name: Deploy to cloudbase
        uses: ./
        with:
          secretId: ${{secrets.secretId}}
          secretKey: ${{secrets.secretKey}}
          envId: ${{secrets.envId}}
```
