load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def gtsam_repositories():
    maybe(
        http_archive,
        name = "com_github_nelhage_rules_boost",
        sha256 = "ac31162d47dc6e165c77c52ad22be27aa27c27fa42f33f241119bde55f09cbc3",
        strip_prefix = "rules_boost-master",
        urls = ["https://github.com/figurerobotics/rules_boost/archive/refs/heads/master.zip"],
    )

    maybe(
        http_archive,
        name = "eigen",
        build_file = "@rules_gtsam//third_party:eigen.BUILD",
        sha256 = "8586084f71f9bde545ee7fa6d00288b264a2b7ac3607b974e54d13e7162c1c72",
        strip_prefix = "eigen-3.4.0",
        urls = ["https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "gtsam",
        build_file = "@rules_gtsam//third_party:gtsam.BUILD",
        sha256 = "8b44d6b98a3b608664d1c9a7c1383a406550499d894533bb0183e6cf487e6457",
        strip_prefix = "gtsam-4.2.0",
        urls = ["https://github.com/borglab/gtsam/archive/4.2.0.tar.gz"],
    )
