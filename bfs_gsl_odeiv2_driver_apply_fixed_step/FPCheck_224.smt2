(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!790 () (_ BitVec 64))
(declare-fun h_ack!791 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!791)
                  ((_ to_fp 11 53) #x4000000000000000)))
  y1_ack!790))

(check-sat)
(exit)
