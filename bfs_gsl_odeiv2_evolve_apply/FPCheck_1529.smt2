(declare-fun t_ack!7550 () (_ BitVec 64))
(declare-fun t1_ack!7551 () (_ BitVec 64))
(declare-fun h_ack!7554 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7553 () (_ BitVec 64))
(declare-fun y0_ack!7552 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7551)
                    ((_ to_fp 11 53) t_ack!7550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7551)
                    ((_ to_fp 11 53) t_ack!7550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7551)
                ((_ to_fp 11 53) t_ack!7550))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7554)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7551)
                    ((_ to_fp 11 53) t_ack!7550)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7551)
                    ((_ to_fp 11 53) t_ack!7550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  y0_ack!7552
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fac71c71c71c71c)
                  ((_ to_fp 11 53) h_ack!7554))
          ((_ to_fp 11 53) y1_ack!7553))))

(check-sat)
(exit)
