load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def gtsam_repositories():
    maybe(
        http_archive,
        name = "gtsam",
        build_file = "@rules_gtsam//third_party:gtsam.BUILD",
        sha256 = "8b44d6b98a3b608664d1c9a7c1383a406550499d894533bb0183e6cf487e6457",
        strip_prefix = "gtsam-4.2.0",
        urls = ["https://github.com/borglab/gtsam/archive/4.2.0.tar.gz"],
    )
