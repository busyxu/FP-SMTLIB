(declare-fun t_ack!75 () (_ BitVec 64))
(declare-fun t1_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!74 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!73)
                                  ((_ to_fp 11 53) t_ack!75)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!73)
                       ((_ to_fp 11 53) t_ack!75)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!73)
                       ((_ to_fp 11 53) t_ack!75))
               ((_ to_fp 11 53) t_ack!75))
       ((_ to_fp 11 53) t1_ack!73)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!73)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!73)
                       ((_ to_fp 11 53) t_ack!75)))
       ((_ to_fp 11 53) t_ack!75)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!73)
                    ((_ to_fp 11 53) t_ack!75))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!73)
               ((_ to_fp 11 53) t_ack!75))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 y0_ack!74))

(check-sat)
(exit)
