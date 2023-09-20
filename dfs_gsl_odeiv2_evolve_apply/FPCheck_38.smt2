(declare-fun t_ack!290 () (_ BitVec 64))
(declare-fun t1_ack!291 () (_ BitVec 64))
(declare-fun h_ack!292 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!291)
                    ((_ to_fp 11 53) t_ack!290))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!291)
               ((_ to_fp 11 53) t_ack!290))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!292) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!291)
                ((_ to_fp 11 53) t_ack!290))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!292)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!291)
               ((_ to_fp 11 53) t_ack!290))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fac71c71c71c71c
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!291)
          ((_ to_fp 11 53) t_ack!290))))

(check-sat)
(exit)
