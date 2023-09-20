(declare-fun t_ack!7696 () (_ BitVec 64))
(declare-fun t1_ack!7697 () (_ BitVec 64))
(declare-fun h_ack!7700 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!7699 () (_ BitVec 64))
(declare-fun y0_ack!7698 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7697)
                    ((_ to_fp 11 53) t_ack!7696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7697)
                    ((_ to_fp 11 53) t_ack!7696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7697)
                ((_ to_fp 11 53) t_ack!7696))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7700)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7697)
                    ((_ to_fp 11 53) t_ack!7696)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7697)
                    ((_ to_fp 11 53) t_ack!7696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7698)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7700))
                           ((_ to_fp 11 53) y1_ack!7699)))))
  (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
