(declare-fun t_ack!7706 () (_ BitVec 64))
(declare-fun t1_ack!7707 () (_ BitVec 64))
(declare-fun h_ack!7710 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!7709 () (_ BitVec 64))
(declare-fun y0_ack!7708 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7707)
                    ((_ to_fp 11 53) t_ack!7706))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7707)
                    ((_ to_fp 11 53) t_ack!7706))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!7707)
                ((_ to_fp 11 53) t_ack!7706))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7710)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7707)
                    ((_ to_fp 11 53) t_ack!7706)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7707)
                    ((_ to_fp 11 53) t_ack!7706))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7708)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!7710))
                           ((_ to_fp 11 53) y1_ack!7709)))))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!1)))

(check-sat)
(exit)
