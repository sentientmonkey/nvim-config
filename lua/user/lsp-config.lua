vim.lsp.config('yamlls', {
  settings = {
    yaml = {
      schemas = {
        ['https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json'] = 'docker-compose.yaml',
        ['https://json.schemastore.org/kustomization.json'] = 'kustomization.yaml',
        ['https://kubernetesjsonschema.dev/master-standalone/cronjob.json'] = 'cronjob.yaml',
        ['https://kubernetesjsonschema.dev/master-standalone/horizontalpodautoscaler.json'] = 'hpa.yaml',
        ['https://kubernetesjsonschema.dev/master-standalone/service.json'] = 'service.yaml',
        ['https://kubernetesjsonschema.dev/master-standalone/deployment.json'] = 'deployment.yaml',
        ['https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/security.istio.io/authorizationpolicy_v1.json'] = '*policy.yaml',
        ['https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json'] = 'workflow.yaml',
        ['https://raw.githubusercontent.com/argoproj/argo-events/master/api/jsonschema/schema.json'] = 'events.yaml',
        ['https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json'] = '.gilab-ci.yaml',
        ['https://json.schemastore.org/github-workflow.json'] = 'ci.yaml'
      },
    },
  },
})

vim.lsp.enable('nixd')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('ruby_lsp')
vim.lsp.enable('racket_langserver')
vim.lsp.enable('elixirls')
vim.lsp.enable('terraformls')
vim.lsp.enable('yamlls')
