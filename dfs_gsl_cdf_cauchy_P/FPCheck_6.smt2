(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun x_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!27)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!26)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!27)
                    ((_ to_fp 11 53) a_ack!26))
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  #xbff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!27)
          ((_ to_fp 11 53) a_ack!26))))

(check-sat)
(exit)
