(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (= #x00000000 a_ack!2)))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!2)
  #x3fd0000000000000))

(check-sat)
(exit)
