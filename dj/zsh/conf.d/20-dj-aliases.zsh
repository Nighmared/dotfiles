alias dj2venv="source $DJ2_DIR/.venv/bin/activate"
alias run_local="dj2venv && cd $DJ2_DIR && tilt up --context docker-desktop -- --config-path $DJ2_DIR/config/dev-tilt.local.jsonnet && deactivate"