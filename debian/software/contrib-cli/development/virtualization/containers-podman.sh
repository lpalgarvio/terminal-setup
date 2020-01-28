#!/bin/bash
# https://stackoverflow.com/questions/34380315/bash-tries-to-execute-commands-in-heredoc
# https://podman.io/getting-started/installation
# https://github.com/containers/image/blob/master/registries.conf
# https://github.com/containers/storage/blob/master/storage.conf
# https://github.com/containers/libpod/blob/master/libpod.conf
# https://github.com/containers/libpod/blob/master/cni/87-podman-bridge.conflist

# Set parameters
podman_config_registries="'docker.io', 'quay.io'";
podman_config_storage_driver="overlay2";
podman_config_graph_root="/srv/containers-rw";
podman_config_run_root="/srv/containers-tmp";
podman_config_network="cni-podman1";
podman_config_gateway="172.24.0.1";
podman_config_subnet="172.24.0.0/16";

# Repositories and keys
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 0x018ba5ad9df57a4448f0e6cf8becf1637ad8c79d;
sudo bash -c "cat <<EOF > /etc/apt/sources.list.d/projectatomic-ubuntu-ppa.list
# Podman
deb http://ppa.launchpad.net/projectatomic/ppa/ubuntu bionic main
EOF";

# Install dependencies
sudo apt-get install -y uidmap;

# Install software
sudo apt-get install -y podman;

# Configuration
sudo mkdir -p /etc/containers;
cat <<EOF > registries.conf
# This is a system-wide configuration file used to
# keep track of registries for various container backends.
# It adheres to TOML format and does not support recursive
# lists of registries.

# The default location for this configuration file is /etc/containers/registries.conf.

# The only valid categories are: 'registries.search', 'registries.insecure',
# and 'registries.block'.

[registries.search]
registries = [${podman_config_registries}]

# If you need to access insecure registries, add the registry's fully-qualified name.
# An insecure registry is one that does not have a valid SSL certificate or only does HTTP.
[registries.insecure]
registries = []


# If you need to block pull access from a registry, uncomment the section below
# and add the registries fully-qualified name.
#
[registries.block]
EOF
sudo bash -c "cat registries.conf > /etc/containers/registries.conf"; rm registries.conf;
cat <<EOF > storage.conf
# storage.conf is the configuration file for all tools
# that share the containers/storage libraries
# See man 5 containers-storage.conf for more information

# The "container storage" table contains all of the server options.
[storage]

# Default Storage Driver
driver = "${podman_config_storage_driver}"

# Temporary storage location
runroot = "${podman_config_run_root}/storage"

# Primary read-write location of container storage
graphroot = "${podman_config_graph_root}/storage"

[storage.options]
# AdditionalImageStores is used to pass paths to additional read-only image stores
# Must be comma separated list.
additionalimagestores = [
]

# Size is used to set a maximum size of the container image.  Only supported by
# certain container storage drivers (currently overlay, zfs, vfs, btrfs)
size = ""

# OverrideKernelCheck tells the driver to ignore kernel checks based on kernel version
override_kernel_check = "true"
EOF
sudo bash -c "cat storage.conf > /etc/containers/storage.conf"; rm storage.conf;
cat <<EOF > libpod.conf
# libpod.conf is the default configuration file for all tools using libpod to
# manage containers

# Default transport method for pulling and pushing for images
image_default_transport = "docker://"

# Paths to look for the conmon container manager binary.
# If the paths are empty or no valid path was found, then the "$PATH"
# environment variable will be used as the fallback.
conmon_path = ["/usr/libexec/podman/conmon", "/usr/local/libexec/podman/conmon", "/usr/local/lib/podman/conmon", "/usr/bin/conmon", "/usr/sbin/conmon", "/usr/local/bin/conmon", "/usr/local/sbin/conmon", "/run/current-system/sw/bin/conmon"]

# Environment variables to pass into conmon
conmon_env_vars = ["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"]

# CGroup Manager - valid values are "systemd" and "cgroupfs"
cgroup_manager = "cgroupfs"

# Container init binary
#init_path = "/usr/libexec/podman/catatonit"

# Directory for persistent libpod files (database, etc)
# By default, this will be configured relative to where containers/storage
# stores containers
# Uncomment to change location from this default
static_dir = "${podman_config_graph_root}/storage/libpod"

# Directory for temporary files. Must be tmpfs (wiped after reboot)
tmp_dir = "${podman_config_run_root}/storage/libpod"

# Maximum size of log files (in bytes)
# -1 is unlimited
max_log_size = -1

# Whether to use chroot instead of pivot_root in the runtime
no_pivot_root = false

# Directory containing CNI plugin configuration files
cni_config_dir = "/etc/cni/net.d/"

# Directories where the CNI plugin binaries may be located
cni_plugin_dir = ["/usr/libexec/cni", "/usr/lib/cni", "/usr/local/lib/cni", "/opt/cni/bin"]

# Default CNI network for libpod.
# If multiple CNI network configs are present, libpod will use the network with
# the name given here for containers unless explicitly overridden.
# The default here is set to the name we set in the
# 87-podman-bridge.conflist included in the repository.
# Not setting this, or setting it to the empty string, will use normal CNI
# precedence rules for selecting between multiple networks.
cni_default_network = "${podman_config_network}"

# Default libpod namespace
# If libpod is joined to a namespace, it will see only containers and pods
# that were created in the same namespace, and will create new containers and
# pods in that namespace.
# The default namespace is "", which corresponds to no namespace. When no
# namespace is set, all containers and pods are visible.
#namespace = ""

# Default infra (pause) image name for pod infra containers
infra_image = "k8s.gcr.io/pause:3.1"

# Default command to run the infra container
infra_command = "/pause"

# Determines whether libpod will reserve ports on the host when they are
# forwarded to containers. When enabled, when ports are forwarded to containers,
# they are held open by conmon as long as the container is running, ensuring that
# they cannot be reused by other programs on the host. However, this can cause
# significant memory usage if a container has many ports forwarded to it.
# Disabling this can save memory.
enable_port_reservation = true

# Default libpod support for container labeling
label=true

# The locking mechanism to use
lock_type = "shm"

# Number of locks available for containers and pods.
# If this is changed, a lock renumber must be performed (e.g. with the
# podman system renumber command).
num_locks = 2048

# Directory for libpod named volumes.
# By default, this will be configured relative to where containers/storage
# stores containers.
# Uncomment to change location from this default.
volume_path = "${podman_config_graph_root}/storage/volumes"

# Selects which logging mechanism to use for Podman events.  Valid values
# are "journald" or "file".
events_logger = "journald"

# Specify the keys sequence used to detach a container.
# Format is a single character [a-Z] or a comma separated sequence of
# "ctrl-<value>", where "<value>" is one of:
# "a-z", "@", "^", "[", "\", "]", "^" or "_"
#
detach_keys = "ctrl-p,ctrl-q"

# Default OCI runtime
runtime = "runc"

# List of the OCI runtimes that support --format=json.  When json is supported
# libpod will use it for reporting nicer errors.
runtime_supports_json = ["crun", "runc"]

# List of all the OCI runtimes that support --cgroup-manager=disable to disable
# creation of CGroups for containers.
runtime_supports_nocgroups = ["crun"]

# Paths to look for a valid OCI runtime (runc, runv, etc)
# If the paths are empty or no valid path was found, then the "$PATH"
# environment variable will be used as the fallback.
[runtimes]
  crun = ["/usr/bin/crun", "/usr/sbin/crun", "/usr/local/bin/crun", "/usr/local/sbin/crun", "/sbin/crun", "/bin/crun", "/run/current-system/sw/bin/crun"]
  runc = ["/usr/bin/runc", "/usr/sbin/runc", "/usr/local/bin/runc", "/usr/local/sbin/runc", "/sbin/runc", "/bin/runc", "/usr/lib/cri-o-runc/sbin/runc", "/run/current-system/sw/bin/runc"]


# Kata Containers is an OCI runtime, where containers are run inside lightweight
# Virtual Machines (VMs). Kata provides additional isolation towards the host,
# minimizing the host attack surface and mitigating the consequences of
# containers breakout.
# Please notes that Kata does not support rootless podman yet, but we can leave
# the paths below blank to let them be discovered by the $PATH environment
# variable.

# Kata Containers with the default configured VMM
kata-runtime = ["/usr/bin/kata-runtime",]

# Kata Containers with the QEMU VMM
kata-qemu = ["/usr/bin/kata-qemu",]

# Kata Containers with the Firecracker VMM
kata-fc = ["/usr/bin/kata-fc",]

# The [runtimes] table MUST be the last thing in this file.
# (Unless another table is added)
# TOML does not provide a way to end a table other than a further table being
# defined, so every key hereafter will be part of [runtimes] and not the main
# config.
EOF
sudo bash -c "cat libpod.conf > /etc/containers/libpod.conf"; rm libpod.conf;
sudo podman network rm ${podman_config_network};
sudo podman network create --driver bridge --gateway "${podman_config_gateway}" --subnet "${podman_config_subnet}";
if [ -d /srv/containers-rw ]; then
  sudo mv /srv/containers-rw /srv/containers-rw.old;
fi;
sudo mkdir -p /srv/containers-rw;
if [ -d /var/lib/containers ]; then
  sudo mv /var/lib/containers/* /srv/containers-rw/;
  sudo rm -Rf /var/lib/containers;
elif [ -L /var/lib/containers ]; then
  sudo rm -f /var/lib/containers;
fi;
sudo ln -s /srv/containers-rw /var/lib/containers;

if [ -d /srv/containers-tmp ]; then
  sudo mv /srv/containers-tmp /srv/containers-tmp.old;
fi;
sudo mkdir -p /srv/containers-tmp;
if [ -d /var/run/containers ]; then
  sudo mv /var/run/containers/* /srv/containers-tmp/;
  sudo rm -Rf /var/run/containers;
elif [ -L /var/run/containers ]; then
  sudo rm -f /var/run/containers;
fi;
sudo ln -s /srv/containers-tmp /var/run/containers;

# Verifications
$(which podman) version;

# Get additional info
sudo $(which podman) version;
sudo $(which podman) info;
sudo $(which podman) network inspect ${podman_config_network};

