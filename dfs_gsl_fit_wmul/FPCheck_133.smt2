(declare-fun w0_ack!581 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!581) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  w0_ack!581
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!581))))

(check-sat)
(exit)
