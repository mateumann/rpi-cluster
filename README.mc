# Raspberry Pi Kubernetes Cluster

based on:
  · https://www.instructables.com/Control-a-Cooling-Fan-on-a-Raspberry-Pi-3/
  · https://rpi4cluster.com

questions:
  · could I use Tanos or k3os (a very minimalistic OS distro)?  The main
    problem would be handling Raspberry PI internals, fan control being the
    most obvious example.  Could it be done from within a container (pod)?

ideas:
  · wireguard + k3s: https://github.com/gravitational/wormhole/,
    https://propellered.com/posts/kubernetes/,
    https://codingcoffee.dev/blog/wireguard_on_kubernetes_with_adblocking/,
    https://math.rousse.me/sysadmin/2020/05/21/wireguard-k8s.html,

# Upgrade pi.aman to arm64
  · https://www.reddit.com/r/Ubiquiti/comments/jddead/run_unifi_controller_on_arm64_debianubuntu_on_rpi4/
