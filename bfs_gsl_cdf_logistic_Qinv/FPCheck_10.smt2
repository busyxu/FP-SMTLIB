(declare-fun x_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun mu_ack!26 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!27) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!27))
               ((_ to_fp 11 53) x_ack!27))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) x_ack!27)))
       ((_ to_fp 11 53) x_ack!27)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!27))
                           ((_ to_fp 11 53) x_ack!27))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!27))
                           ((_ to_fp 11 53) x_ack!27)))))
  (FPCHECK_FMUL_ACCURACY mu_ack!26 a!1)))

(check-sat)
(exit)
