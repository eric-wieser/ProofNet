import data.rat.basic
import data.real.basic
import data.real.irrational
import data.real.sqrt
import analysis.inner_product_space.basic
import analysis.inner_product_space.pi_L2
import analysis.specific_limits.basic
import analysis.specific_limits.normed
import analysis.specific_limits.basic
import analysis.specific_limits.normed
import analysis.box_integral.basic
import analysis.analytic.basic
import data.set.intervals.basic
import topology.basic
import topology.bases
import topology.metric_space.basic
import topology.instances.real
import measure_theory.integral.interval_integral

open complex filter function
open_locale big_operators
open_locale filter
open_locale topological_space

theorem exercise_1_13a {f : ℂ → ℂ} (Ω : set ℂ) (a b : Ω) (h : is_open Ω)
  (hf : differentiable_on ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, (f z).re = c) :
  f a = f b :=
sorry

theorem exercise_1_13b {f : ℂ → ℂ} (Ω : set ℂ) (a b : Ω) (h : is_open Ω)
  (hf : differentiable_on ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, (f z).im = c) :
  f a = f b :=
sorry

theorem exercise_1_13c {f : ℂ → ℂ} (Ω : set ℂ) (a b : Ω) (h : is_open Ω)
  (hf : differentiable_on ℂ f Ω) (hc : ∃ (c : ℝ), ∀ z ∈ Ω, abs (f z) = c) :
  f a = f b :=
sorry

theorem exercise_1_19a (z : ℂ) (hz : abs z = 1) (s : ℕ → ℂ)
    (h : s = (λ n, ∑ i in (finset.range n), i * z ^ i)) :
    ¬ ∃ y, tendsto s at_top (𝓝 y) :=
sorry

theorem exercise_1_19b (z : ℂ) (hz : abs z = 1) (s : ℕ → ℂ)
    (h : s = (λ n, ∑ i in (finset.range n), i * z / i ^ 2)) :
    ∃ y, tendsto s at_top (𝓝 y) :=
sorry

theorem exercise_1_19c (z : ℂ) (hz : abs z = 1) (hz2 : z ≠ 1) (s : ℕ → ℂ)
    (h : s = (λ n, ∑ i in (finset.range n), i * z / i)) :
    ∃ z, tendsto s at_top (𝓝 z) :=
sorry

theorem exercise_2_9
  {f : ℂ → ℂ} (Ω : set ℂ) (b : metric.bounded Ω) (h : is_open Ω)
  (hf : differentiable_on ℂ f Ω) (z ∈ Ω) (hz : f z = z) (h'z : deriv f z = 1) :
  ∃ (f_lin : ℂ →L[ℂ] ℂ), ∀ x ∈ Ω, f x = f_lin x :=
sorry

theorem exercise_2_13 {f : ℂ → ℂ}
    (hf : ∀ z₀ : ℂ, ∃ (s : set ℂ) (c : ℕ → ℂ), is_open s ∧ z₀ ∈ s ∧
      ∀ z ∈ s, tendsto (λ n, ∑ i in finset.range n, (c i) * (z - z₀)^i) at_top (𝓝 (f z₀))
      ∧ ∃ i, c i = 0) :
    ∃ (c : ℕ → ℂ) (n : ℕ), f = λ z, ∑ i in finset.range n, (c i) * z ^ n :=
sorry

theorem exercise_3_14 {f : ℂ → ℂ} (hf : differentiable ℂ f)
    (hf_inj : function.injective f) :
    ∃ (a b : ℂ), f = (λ z, a * z + b) ∧ a ≠ 0 :=
sorry

open metric

theorem exercise_3_22 (D : set ℂ) (hD : D = ball 0 1) (f : ℂ → ℂ)
    (hf : differentiable_on ℂ f D) (hfc : continuous_on f (closure D)) :
    ¬ ∀ z ∈ (sphere (0 : ℂ) 1), f z = 1 / z :=
sorry

theorem exercise_5_1 (f : ℂ → ℂ) (hf : differentiable_on ℂ f (ball 0 1))
  (hb : bounded (set.range f)) (h0 : f ≠ 0) (zeros : ℕ → ℂ) (hz : ∀ n, f (zeros n) = 0)
  (hzz : set.range zeros = {z | f z = 0 ∧ z ∈ (ball (0 : ℂ) 1)}) :
  ∃ (z : ℂ), tendsto (λ n, (∑ i in finset.range n, (1 - zeros i))) at_top (𝓝 z) :=
sorry
