(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!9 #x00000001)))
(assert (not (bvult (concat #x00000000 a_ack!9) #x0000000000000033)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4010000000000000
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!9)))

(check-sat)
(exit)
