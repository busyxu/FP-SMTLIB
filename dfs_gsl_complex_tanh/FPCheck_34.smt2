(declare-fun x_ack!139 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!138 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!139))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3ff0000000000000
  (CF_pow (fp.div roundNearestTiesToEven (CF_cos y_ack!138) (CF_sinh x_ack!139))
          #x4000000000000000)))

(check-sat)
(exit)
