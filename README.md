# kube

helm pull kestra/kestra --version 0.18.0
tar -xvf kestra-0.18.0.tgz


k8s-configs/
│
├── charts/                      # Helm charts (reusable across environments)
│   ├── app-1-chart/             # Helm chart for app-1
│   │   ├── Chart.yaml           # Helm chart metadata
│   │   ├── values.yaml          # Default values for app-1
│   │   ├── templates/           # Templates (deployment, service, ingress)
│   │   └── charts/              # Subcharts (if any)
│   ├── app-2-chart/             # Helm chart for app-2
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   ├── templates/
│   │   └── charts/
│   └── ...
│
├── environments/                # Environment-specific overrides for charts
│   ├── dev/                     # Dev environment configurations
│   │   ├── app-1/               # Dev-specific overrides for app-1
│   │   │   └── values.yaml      # Overrides for app-1 in dev environment
│   │   ├── app-2/               # Dev-specific overrides for app-2
│   │   │   └── values.yaml      # Overrides for app-2 in dev environment
│   │   └── _helpers.tpl         # Optional: environment-specific helpers
│   │
│   ├── staging/                 # Staging environment configurations
│   │   ├── app-1/               # Staging-specific overrides for app-1
│   │   │   └── values.yaml      # Overrides for app-1 in staging environment
│   │   ├── app-2/               # Staging-specific overrides for app-2
│   │   │   └── values.yaml      # Overrides for app-2 in staging environment
│   │   └── _helpers.tpl
│   │
│   ├── prod/                    # Production environment configurations
│   │   ├── app-1/               # Prod-specific overrides for app-1
│   │   │   └── values.yaml      # Overrides for app-1 in prod environment
│   │   ├── app-2/               # Prod-specific overrides for app-2
│   │   │   └── values.yaml      # Overrides for app-2 in prod environment
│   │   └── _helpers.tpl
│   │
│   └── ...
│
├── base/                        # Common Kubernetes resources (e.g., namespaces, configmaps)
├── tools/                       # Tools like CI/CD configurations, Helm charts for tools
└── README.md                    # Documentation for the repo
