(declare-fun x_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun y_ack!140 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!141))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (CF_pow (fp.div roundNearestTiesToEven (CF_cos y_ack!140) (CF_sinh x_ack!141))
          #x4000000000000000)))

(check-sat)
(exit)
