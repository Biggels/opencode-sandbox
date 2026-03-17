# for ~/.bashrc or ~/.zshrc
opencode-sandbox() {
  # Use the provided directory or default to the current directory
  local target_dir="${1:-$PWD}"

  # Resolve to an absolute path
  target_dir=$(realpath "$target_dir")

  echo "🚀 Firing up OpenCode Sandbox (YOLO Mode) in: $target_dir"

  docker run -it --rm \
    --name opencode-yolo-sandbox \
    -v "$target_dir:/workspace" \
    -e OPENCODE_PERMISSION='{"*":{"*":"allow"}}' \
    --env-file "$HOME/.opencode.env" \
    opencode-sandbox:latest
}
