(declare-fun t_ack!223 () (_ BitVec 64))
(declare-fun t1_ack!224 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!226 () (_ BitVec 64))
(declare-fun h_ack!227 () (_ BitVec 64))
(declare-fun y0_ack!225 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!224)
                    ((_ to_fp 11 53) t_ack!223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!224)
                    ((_ to_fp 11 53) t_ack!223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!224)
                     ((_ to_fp 11 53) t_ack!223))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!224)
                    ((_ to_fp 11 53) t_ack!223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!225)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!227))
                           ((_ to_fp 11 53) y1_ack!226)))))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!1)))

(check-sat)
(exit)
