theorem exercise_1.2
: is_cube_root_of_1 ⟨-1, 1⟩ :=
sorry

theorem exercise_1.3
(v : V) : -(-v) = v :=
sorry

theorem exercise_1.4
{F : Type*} [field F] {V : Type*} [add_comm_group V] [vector_space F V] (a : F) (v : V) : a • v = 0 ↔ a = 0 ∨ v = 0 :=
sorry

theorem exercise_1.6
{U : Type*} [add_comm_group U] [vector_space ℝ U] (hU : set.nonempty U) (hU_add : ∀ (u v : U), u + v ∈ U) (hU_inv : ∀ (u : U), -u ∈ U) : ¬ is_subspace U :=
sorry

theorem exercise_1.7
(U : Type*) (hU : nonempty U) : ∃ (V : set U), V ≠ ∅ :=
sorry

theorem exercise_1.8
{X : Type*} [topological_space X] (U V : set X) (hU : is_open U) (hV : is_open V) : is_open (U ∩ V) :=
sorry

theorem exercise_1.9
{V : Type*} [add_comm_group V] [vector_space ℂ V] (U W : submodule ℂ V) : submodule.is_subspace (U ⊔ W) ↔ U ≤ W ∨ W ≤ U :=
sorry

theorem exercise_2.1
{V : Type*} [add_comm_group V] [vector_space ℂ V] {v : list V} (hv : span ℂ v = ⊤) : span ℂ (list.sub_list v) = ⊤ :=
sorry

theorem exercise_2.2
{V : Type*} [add_comm_group V] [vector_space ℂ V] {v : list V} (hv : linear_independent ℂ v) : linear_independent ℂ (list.sub_list v) :=
sorry

theorem exercise_2.6
: infinite_dimensional ℝ (continuous_functions_on_01) :=
sorry

theorem exercise_3.1
{V : Type*} [field ℂ] [add_comm_group V] [vector_space ℂ V] (T : V →ₗ[ℂ] V) (hT : T ≠ 0) : ∃ (a : ℂ), T = a • linear_map.id :=
sorry

theorem exercise_3.8
{V : Type*} [add_comm_group V] [vector_space ℂ V] {W : Type*} [add_comm_group W] [vector_space ℂ W] (T : V →ₗ[ℂ] W) (hT : T.range = T.range) (hT' : T.null_space = ⊥) : ∃ (U : submodule ℂ V), U.comap T = ⊥ ∧ T.range = U.range :=
sorry

theorem exercise_3.9
{F : Type*} [field F] {n m : ℕ} (h : n > m) (T : F^n → F^m) (hT : T.null_space = span ({(1,5,0,0),(0,0,1,7)} : set (F^4))) : T.surjective :=
sorry

theorem exercise_3.10
{F : Type*} [field F] (h : ∃ (f : F^5 → F^2), linear_map f ∧ f.null_space = {v : F^5 | v.1 = 3 * v.2 ∧ v.3 = v.4 ∧ v.5 = v.4}) : false :=
sorry

theorem exercise_3.11
{V : Type*} [add_comm_group V] [vector_space ℂ V] {W : Type*} [add_comm_group W] [vector_space ℂ W] (f : V →ₗ[ℂ] W) (hf : finite_dimensional ℂ (f.null_space) ∧ finite_dimensional ℂ (f.range)) : finite_dimensional ℂ V :=
sorry

theorem exercise_4.4
(p : polynomial ℂ) (m : ℕ) (h : p.degree = m) : p.has_n_roots m ↔ p.derivative.roots.disjoint p.roots :=
sorry

theorem exercise_5.1
{V : Type*} [add_comm_group V] [vector_space ℂ V] {T : V →ₗ[ℂ] V} (hT : linear_map ℂ T) (U : ℕ → submodule ℂ V) (hU : ∀ i, T.range ⊆ U i) : T.range ⊆ ⨆ i, U i :=
sorry

theorem exercise_5.4
{V : Type*} [add_comm_group V] [vector_space ℂ V] {S T : V →ₗ[ℂ] V} (hST : S.commutes T) (λ : ℂ) : is_submodule (null_space (T - λ • linear_map.id V)) S :=
sorry

theorem exercise_5.11
{V : Type*} [add_comm_group V] [vector_space ℂ V] [finite_dimensional ℂ V] (S T : linear_map ℂ V ℂ V) : eigenvalues (S * T) = eigenvalues (T * S) :=
sorry

theorem exercise_5.12
{V : Type*} [add_comm_group V] [vector_space ℂ V] [finite_dimensional ℂ V] (T : V →ₗ[ℂ] V) (hT : ∀ v : V, is_eigenvector ℂ T v) : ∃ (c : ℂ), T = c • linear_map.id :=
sorry

theorem exercise_5.13
{V : Type*} [add_comm_group V] [vector_space ℂ V] {T : V →ₗ[ℂ] V} (hT : ∀ (U : submodule ℂ V), dim ℂ U = dim ℂ V - 1 → U.is_invariant T) : ∃ (c : ℂ), T = c • linear_map.id :=
sorry

theorem exercise_5.20
{V : Type*} [add_comm_group V] [vector_space ℂ V] {T S : V →ₗ[ℂ] V} (hT : is_diagonalizable T) (hS : is_diagonalizable S) (h : ∀ (v : V), is_eigenvector T v → is_eigenvector S v) : S.comp T = T.comp S :=
sorry

theorem exercise_5.24
{V : Type*} [add_comm_group V] [vector_space ℝ V] {T : V → V} (hT : linear_map ℝ V V T) (hT_no_eigenvalues : ∀ (v : V), v ≠ 0 → T v ≠ v) : ∀ (U : submodule ℝ V), T.range ⊆ U → U.dim % 2 = 0 :=
sorry

theorem exercise_6.2
{V : Type*} [add_comm_group V] [vector_space ℂ V] [inner_product ℂ V] (u v : V) : inner_product u v = 0 ↔ ∀ (a : ℂ), ∥u∥ ≤ ∥u + a • v∥ :=
sorry

theorem exercise_6.3
{α : Type*} [add_comm_monoid α] [semimodule ℝ α] {a b : fin n → α} (h : ∀ i, ∑ j in finset.range n, a j * b j ≤ ∑ j in finset.range n, j * a j * a j) : ∑ j in finset.range n, a j * b j ≤ ∑ j in finset.range n, (1 / j) * b j * b j :=
sorry

theorem exercise_6.7
{V : Type*} [inner_product_space ℂ V] (u v : V) : inner u v = (norm_squared (u + v) - norm_squared (u - v) + norm_squared (u + I • v) * I - norm_squared (u - I • v) * I) / 4 :=
sorry

theorem exercise_6.13
{V : Type*} [inner_product_space ℂ V] {e : fin m → V} (he : orthonormal e) (v : V) : ∥v∥^2 = ∑ i, ∥inner_product ℂ v (e i)∥^2 ↔ v ∈ span ℂ (e '' univ) :=
sorry

theorem exercise_6.16
{V : Type*} [inner_product_space ℂ V] (U : submodule ℂ V) : U.orthogonal = ⊥ ↔ U = ⊤ :=
sorry

theorem exercise_6.17
{V : Type*} [inner_product_space ℂ V] {P : V → V} (hP : is_projection P) (hP2 : P ∘ P = P) (hnull : ∀ (v : V), v ∈ null_space P → ∀ (w : V), w ∈ range P → v ⊥ w) : is_orthogonal_projection P :=
sorry

theorem exercise_6.18
{V : Type*} [inner_product_space ℂ V] {P : V → V} (hP : self_adjoint P) (hP2 : P ∘ P = P) (hP_le : ∀ v : V, ∥P v∥ ≤ ∥v∥) : is_projection P :=
sorry

theorem exercise_6.19
{V : Type*} [add_comm_group V] [vector_space ℂ V] {T : V →ₗ[ℂ] V} (U : submodule ℂ V) : U.is_invariant T ↔ T.comp (U.subtype.projection) = (U.subtype.projection).comp T :=
sorry

theorem exercise_6.20
{V : Type*} [add_comm_group V] [vector_space ℂ V] (T : V →ₗ[ℂ] V) (U : submodule ℂ V) : is_invariant U T ↔ T.comp (projection U) = projection U.comp T :=
sorry

theorem exercise_6.29
{V : Type*} [inner_product_space ℂ V] {T : V →ₗ[ℂ] V} (U : submodule ℂ V) : U.is_invariant T ↔ U.orthogonal.is_invariant T.adjoint :=
sorry

theorem exercise_7.4
{V : Type*} [inner_product_space ℂ V] [add_comm_group V] [vector_space ℂ V] [module ℂ V] {P : V → V} (hP : is_projection P) : self_adjoint P ↔ is_projection P :=
sorry

theorem exercise_7.5
{V : Type*} [finite_dimensional ℂ V] (hV : dim V ≥ 2) : ¬ (normal_ops V).is_subspace :=
sorry

theorem exercise_7.6
{V : Type*} [inner_product_space ℂ V] [normed_space ℂ V] (T : V →ₗ[ℂ] V) (hT : T.is_normal) : T.range = T.adjoint.range :=
sorry

theorem exercise_7.8
{R : Type*} [ring R] [semiring R] [add_comm_group R] [module R R] [vector_space ℝ R] [inner_product_space ℝ R] [normed_group R] [normed_space ℝ R] [complete_space ℝ R] (T : R →ₗ[R] R) (hT : T.is_self_adjoint) (hT1 : T (1 : R) = 0) (hT2 : T (2 : R) = 2 :=
sorry

theorem exercise_7.9
{V : Type*} [inner_product_space ℂ V] [normed_group V] [normed_space ℂ V] {T : V →ₗ[ℂ] V} (hT : T.is_normal) : T.is_self_adjoint ↔ ∀ (λ : ℂ), T.is_eigenvalue λ → λ.is_real :=
sorry

theorem exercise_7.10
{V : Type*} [inner_product_space ℂ V] {T : V →ₗ[ℂ] V} (hT : is_normal T) (hT9 : T ^ 9 = T ^ 8) : T = T.adjoint ↔ T ^ 2 = T :=
sorry

theorem exercise_7.11
{V : Type*} [inner_product_space ℂ V] {T : V →ₗ[ℂ] V} (hT : T.is_normal) : ∃ (S : V →ₗ[ℂ] V), S.is_normal ∧ S ^ 2 = T :=
sorry

theorem exercise_7.14
{V : Type*} [inner_product_space ℂ V] [normed_group V] [normed_space ℂ V] {T : V →ₗ[ℂ] V} (hT : self_adjoint T) (λ : ℂ) (ε : ℝ) (hε : ε > 0) (v : V) (hv : ∥v∥ = 1) (hvT : ∥T v - λ • v∥ < ε) : :=
sorry

theorem exercise_7.15
{U : Type*} [finite_dimensional ℝ U] (T : linear_map ℝ U U) : ∃ (b : set U), is_basis ℝ b ∧ ∀ (v : U), v ∈ b → is_eigenvector ℝ T v ↔ ∃ (ip : inner_product_space ℝ U), is_self_adjoint ℝ ip T :=
sorry

theorem exercise_7.17
{V : Type*} [inner_product_space ℂ V] {A B : V →ₗ[ℂ] V} (hA : A.is_self_adjoint) (hB : B.is_self_adjoint) (hApos : A.is_positive) (hBpos : B.is_positive) : (A + B).is_positive :=
sorry

theorem exercise_7.18
{V : Type*} [inner_product_space ℂ V] [normed_space ℂ V] (T : bounded_linear_map V V) (hT : T.is_positive) (k : ℕ) : T.pow k.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ.succ :=
sorry