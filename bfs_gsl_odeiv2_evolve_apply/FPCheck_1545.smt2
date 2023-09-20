(declare-fun t_ack!7680 () (_ BitVec 64))
(declare-fun t1_ack!7681 () (_ BitVec 64))
(declare-fun h_ack!7682 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7681)
                    ((_ to_fp 11 53) t_ack!7680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7681)
                    ((_ to_fp 11 53) t_ack!7680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7681)
                ((_ to_fp 11 53) t_ack!7680))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7682)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7681)
                    ((_ to_fp 11 53) t_ack!7680)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7681)
                    ((_ to_fp 11 53) t_ack!7680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!7680
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fac71c71c71c71c)
          ((_ to_fp 11 53) h_ack!7682))))

(check-sat)
(exit)
