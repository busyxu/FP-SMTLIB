(declare-fun t_ack!7529 () (_ BitVec 64))
(declare-fun t1_ack!7530 () (_ BitVec 64))
(declare-fun h_ack!7532 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y1_ack!7531 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7530)
                    ((_ to_fp 11 53) t_ack!7529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7530)
                    ((_ to_fp 11 53) t_ack!7529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7530)
                ((_ to_fp 11 53) t_ack!7529))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7532)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7530)
                    ((_ to_fp 11 53) t_ack!7529)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7530)
                    ((_ to_fp 11 53) t_ack!7529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          ((_ to_fp 11 53) h_ack!7532))
  y1_ack!7531))

(check-sat)
(exit)
