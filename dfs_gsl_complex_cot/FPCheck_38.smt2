(declare-fun y_ack!154 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!155 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) y_ack!154))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (CF_pow (fp.div roundNearestTiesToEven (CF_cos x_ack!155) (CF_sinh y_ack!154))
          #x4000000000000000)))

(check-sat)
(exit)
