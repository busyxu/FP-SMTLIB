(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!53 () (_ BitVec 64))
(declare-fun h_ack!54 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!54)
          ((_ to_fp 11 53) #x4018000000000000))
  y1_ack!53))

(check-sat)
(exit)
