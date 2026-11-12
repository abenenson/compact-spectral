# compact-spectral

[![Lean Action CI](https://github.com/abenenson/compact-spectral/actions/workflows/lean_action_ci.yml/badge.svg?branch=main)](https://github.com/abenenson/compact-spectral/actions/workflows/lean_action_ci.yml)

Lean 4 proof of the **spectral theorem for compact self-adjoint operators**: a compact self-adjoint operator on a separable Hilbert space admits a Hilbert basis of eigenvectors.

> **Build status:** Verified on Lean v4.29.1 with Mathlib. Zero sorries.

## Main results

```lean
-- Eigenspaces are dense: their supremum has trivial orthogonal complement
theorem CompactSelfAdjoint.iSup_eigenspace_orthogonal_eq_bot_of_isCompactOperator_of_isSelfAdjoint
    {𝕜 : Type*} [RCLike 𝕜] {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (T : E →L[𝕜] E) (hT : IsSelfAdjoint T) (hTc : IsCompactOperator (T : E → E)) :
    (⨆ μ : 𝕜, (T : Module.End 𝕜 E).eigenspace μ)ᗮ = ⊥

-- A compact self-adjoint operator admits a Hilbert basis of eigenvectors
theorem CompactSelfAdjoint.exists_hilbertBasis_hasEigenvector_of_isCompactOperator_of_isSelfAdjoint
    {𝕜 : Type*} [RCLike 𝕜] {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [CompleteSpace E]
    (T : E →L[𝕜] E) (hT : IsSelfAdjoint T) (hTc : IsCompactOperator (T : E → E)) :
    ∃ (ι : Type _) (μ : ι → 𝕜) (b : HilbertBasis ι 𝕜 E),
      ∀ i, (T : Module.End 𝕜 E).HasEigenvector (μ i) (b i)
```

## Module structure

- `Topology/WeakHilbertCompact` — weak compactness lemmas for Hilbert spaces
- `Analysis/InnerProductSpace/RayleighCompact` — Rayleigh quotient bounds for compact operators
- `Analysis/InnerProductSpace/CompactOperatorOrthonormal` — orthonormal sequences from compact operator images
- `Analysis/InnerProductSpace/CompactSelfAdjoint` — core definitions and large-eigenspace construction
- `Analysis/InnerProductSpace/CompactSelfAdjoint/Basic` — fundamental lemmas
- `Analysis/InnerProductSpace/CompactSelfAdjoint/Approximation` — finite-rank approximation and key estimate
- `Analysis/InnerProductSpace/CompactSelfAdjoint/OpNormEigenvalue` — eigenvalue operator norm bounds
- `Analysis/InnerProductSpace/CompactSelfAdjoint/SpectralFiniteness` — finiteness of point spectrum outside any neighbourhood of zero
- `Analysis/InnerProductSpace/CompactSelfAdjoint/CutoffProjector` — orthogonal projection onto large-eigenvalue subspace
- `Analysis/InnerProductSpace/CompactSelfAdjoint/SpectralTheorem` — main results

## Dependencies

Lean 4 + [Mathlib](https://github.com/leanprover-community/mathlib4). No external dependencies.

## Build

```bash
lake exe cache get
lake build --wfail
```

CI builds the library with warnings treated as errors and compiles API documentation on pushes,
pull requests, and manual runs. Documentation is available as the `api-docs` workflow artifact.
To build it locally, run `./scripts/build-docs.sh`; the output is in `public-docs/docs/`.
Optional GitHub Pages publication requires Pages to use GitHub Actions and the repository variable
`PUBLISH_DOCS` to be `true`; publication then runs on pushes to `main`.

For more detail on the internal organization of the development, see
[`docs/overview.md`](docs/overview.md).

## Organization

The development separates reusable weak-compactness, Rayleigh quotient, compact-operator, and
compact self-adjoint spectral lemmas from the final Hilbert-basis theorem.

## References

- Reed & Simon, *Methods of Modern Mathematical Physics I: Functional Analysis*, Academic Press, 1980
- Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations*, Springer, 2011
