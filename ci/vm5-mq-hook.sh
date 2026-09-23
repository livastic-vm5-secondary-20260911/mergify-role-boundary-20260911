#!/usr/bin/env bash
set -euo pipefail
echo "VM5 external fork payload executing in ${GITHUB_REPOSITORY} at ${GITHUB_REF}"
proof_ref="refs/heads/vm5-mq-trusted-push-proof-${GITHUB_RUN_ID}"
gh api --method POST \
  -H "Accept: application/vnd.github+json" \
  "repos/${GITHUB_REPOSITORY}/git/refs" \
  -f ref="$proof_ref" \
  -f sha="$GITHUB_SHA"
echo "VM5_PROOF_REF=$proof_ref"
