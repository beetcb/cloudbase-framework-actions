```yml
name: 'deploy-test'
on:
  watch:
    # Test on star
    types: [started]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Check out
        uses: actions/checkout@v2

      - name: Check out
        uses: ./
        with:
          secretId: ${{secrets.secretId}}
          secretKey: ${{secrets.secretKey}}
          envId: ${{secrets.envId}}
```
