/-
Copyright (c) 2026 Adam Benenson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Benenson
-/
import CompactSpectral.Analysis.InnerProductSpace.CompactOperatorOrthonormal
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint.Approximation
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint.CutoffProjector
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint.OpNormEigenvalue
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint.SpectralFiniteness
import CompactSpectral.Analysis.InnerProductSpace.CompactSelfAdjoint.SpectralTheorem
import CompactSpectral.Analysis.InnerProductSpace.RayleighCompact
import CompactSpectral.Topology.WeakHilbertCompact

/-!
# Compact self-adjoint spectral theory

This is the root import file for the `CompactSpectral` library. It re-exports every
module in the library so that downstream files can `import CompactSpectral` to obtain
the full spectral theorem for compact self-adjoint operators on Hilbert spaces.

## Overview

* **WeakHilbertCompact** — weak compactness of Hilbert closed balls
* **RayleighCompact** — Rayleigh quotient extrema for compact operators
* **CompactOperatorOrthonormal** — compact operators on orthonormal sequences
* **CompactSelfAdjoint** — compression/restriction helpers
* **SpectralFiniteness** — finiteness of large eigenvalues
* **CutoffProjector** — large-eigenspace cutoff projectors
* **Approximation** — finite-rank approximation in operator norm
* **OpNormEigenvalue** — eigenvalue at the operator norm
* **SpectralTheorem** — Hilbert basis of eigenvectors
-/
