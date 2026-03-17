# for ~/.config/fish/config.fish
function opencode-sandbox
    # Use the provided directory or default to the current working directory
    set target_dir $argv[1]
    if test -z "$target_dir"
        set target_dir $PWD
    end

    # Resolve to an absolute path
    set target_dir (realpath $target_dir)

    echo "🚀 Firing up OpenCode Sandbox (YOLO Mode) in: $target_dir"

    docker run -it --rm \
        --name opencode-yolo-sandbox \
        -v "$target_dir:/workspace" \
        -e OPENCODE_PERMISSION='{"*":{"*":"allow"}}' \
        --env-file "$HOME/.opencode.env" \
        opencode-sandbox:latest
end
