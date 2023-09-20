(declare-fun h_ack!50 () (_ BitVec 64))
(declare-fun x_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!51)
                    ((_ to_fp 11 53) h_ack!50))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  x_ack!51
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!50)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
