(declare-fun t_ack!880 () (_ BitVec 64))
(declare-fun t1_ack!881 () (_ BitVec 64))
(declare-fun h_ack!882 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!881)
                    ((_ to_fp 11 53) t_ack!880))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!881)
               ((_ to_fp 11 53) t_ack!880))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!882) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!881)
                ((_ to_fp 11 53) t_ack!880))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!882)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!881)
               ((_ to_fp 11 53) t_ack!880))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fb5555555555555
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!881)
          ((_ to_fp 11 53) t_ack!880))))

(check-sat)
(exit)
