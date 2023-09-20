(declare-fun b_ack!892 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!892))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!892))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!892))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4048000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!892)))
  #x4026000000000000))

(check-sat)
(exit)
