(declare-fun t_ack!7560 () (_ BitVec 64))
(declare-fun t1_ack!7561 () (_ BitVec 64))
(declare-fun h_ack!7564 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!7563 () (_ BitVec 64))
(declare-fun y0_ack!7562 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7561)
                    ((_ to_fp 11 53) t_ack!7560))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7561)
                    ((_ to_fp 11 53) t_ack!7560))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7561)
                ((_ to_fp 11 53) t_ack!7560))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7564)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7561)
                    ((_ to_fp 11 53) t_ack!7560)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7561)
                    ((_ to_fp 11 53) t_ack!7560))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  y0_ack!7562
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fac71c71c71c71c)
                  ((_ to_fp 11 53) h_ack!7564))
          ((_ to_fp 11 53) y1_ack!7563))))

(check-sat)
(exit)
