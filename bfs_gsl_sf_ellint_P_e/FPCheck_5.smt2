(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a_ack!7 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7)
          ((_ to_fp 11 53) #x400921fb54442d18))
  #x3fe0000000000000))

(check-sat)
(exit)
