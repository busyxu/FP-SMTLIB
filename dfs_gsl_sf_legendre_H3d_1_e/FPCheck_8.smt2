(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a_ack!19 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!19)
          ((_ to_fp 11 53) a_ack!19))
  #x3ff0000000000000))

(check-sat)
(exit)
