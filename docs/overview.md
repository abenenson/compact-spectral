# Compact Self-Adjoint Spectral Theorem Overview

This project formalizes the spectral theorem for compact self-adjoint operators on Hilbert
spaces: a compact self-adjoint operator admits a Hilbert basis consisting of eigenvectors.

## Organization

The development is organized in stages:

1. weak compactness and Rayleigh quotient lemmas,
2. compact-operator behavior on orthonormal families,
3. compact self-adjoint basic API,
4. large-eigenspace and finite-spectrum estimates,
5. cutoff projectors and the final Hilbert-basis theorem.

These stages separate reusable functional-analysis lemmas from the final spectral theorem.

## Verification

The repository is pinned to Lean and Mathlib in `lean-toolchain` and `lake-manifest.json`.
The public CI uses `leanprover/lean-action` for a build with warnings treated as errors, then
compiles API documentation with doc-gen4 at the pinned Lean release. Every run uploads an
`api-docs` artifact. GitHub Pages publication is optional; see the repository README.
