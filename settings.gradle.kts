rootProject.name = "codebuild"

buildCache {
    local {
        directory = File(rootDir, "build-cache")
    }
}