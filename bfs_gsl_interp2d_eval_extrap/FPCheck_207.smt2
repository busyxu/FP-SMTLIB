(declare-fun x1_ack!2108 () (_ BitVec 64))
(declare-fun x0_ack!2113 () (_ BitVec 64))
(declare-fun y0_ack!2109 () (_ BitVec 64))
(declare-fun x_ack!2111 () (_ BitVec 64))
(declare-fun y_ack!2112 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!2110 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2113) ((_ to_fp 11 53) x1_ack!2108))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2109) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2111) ((_ to_fp 11 53) x0_ack!2113))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2111) ((_ to_fp 11 53) x1_ack!2108)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2112) ((_ to_fp 11 53) y0_ack!2109))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2112) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2108)
                       ((_ to_fp 11 53) x0_ack!2113))
               ((_ to_fp 11 53) x0_ack!2113))
       ((_ to_fp 11 53) x1_ack!2108)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2108)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2108)
                       ((_ to_fp 11 53) x0_ack!2113)))
       ((_ to_fp 11 53) x0_ack!2113)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2112)
                       ((_ to_fp 11 53) y0_ack!2109))
               ((_ to_fp 11 53) y0_ack!2109))
       ((_ to_fp 11 53) y_ack!2112)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2112)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2112)
                       ((_ to_fp 11 53) y0_ack!2109)))
       ((_ to_fp 11 53) y0_ack!2109)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2111)
                                   ((_ to_fp 11 53) x0_ack!2113))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2108)
                                   ((_ to_fp 11 53) x0_ack!2113))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2112)
                                   ((_ to_fp 11 53) y0_ack!2109))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2109))))))
  (FPCHECK_FMUL_ACCURACY a!2 z1_ack!2110))))

(check-sat)
(exit)
