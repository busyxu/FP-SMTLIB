(declare-fun a_ack!10 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvule a_ack!10 #x000000aa)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!10)
  #x3ff0000000000000))

(check-sat)
(exit)
