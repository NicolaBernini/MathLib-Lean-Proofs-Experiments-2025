import Mathlib

-- Assume E is a normed space over ℝ
variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E]

-- Prove that for any vector x in E,
-- the norm of 2 • x is less than or equal to 2 times the norm of x
example (x : E) : ‖(2 : ℝ) • x‖ ≤ 2 * ‖x‖ := by
  simpa using (NormedSpace.norm_smul_le (2 : ℝ) x)
