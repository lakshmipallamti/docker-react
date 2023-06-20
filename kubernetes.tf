resource "digitalocean_kubernetes_cluster" "example" {
  name       = "react-cluster"
  region     = "nyc1"
  version    = "latest"
  node_pool {
    name       = "react-node-pool2"
    size       = "s-2vcpu-4gb"
    node_count = 2
  }
}

