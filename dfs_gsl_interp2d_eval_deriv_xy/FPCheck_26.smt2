(declare-fun x1_ack!292 () (_ BitVec 64))
(declare-fun x0_ack!300 () (_ BitVec 64))
(declare-fun y0_ack!293 () (_ BitVec 64))
(declare-fun x_ack!298 () (_ BitVec 64))
(declare-fun y_ack!299 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!296 () (_ BitVec 64))
(declare-fun z1_ack!295 () (_ BitVec 64))
(declare-fun z3_ack!297 () (_ BitVec 64))
(declare-fun z0_ack!294 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!300) ((_ to_fp 11 53) x1_ack!292))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!293) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!298) ((_ to_fp 11 53) x0_ack!300))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!298) ((_ to_fp 11 53) x1_ack!292))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!299) ((_ to_fp 11 53) y0_ack!293))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!299) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!298) ((_ to_fp 11 53) x0_ack!300))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!298) ((_ to_fp 11 53) x1_ack!292))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!299) ((_ to_fp 11 53) y0_ack!293))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!299) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!292)
                       ((_ to_fp 11 53) x0_ack!300))
               ((_ to_fp 11 53) x0_ack!300))
       ((_ to_fp 11 53) x1_ack!292)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!292)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!292)
                       ((_ to_fp 11 53) x0_ack!300)))
       ((_ to_fp 11 53) x0_ack!300)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!293))
               ((_ to_fp 11 53) y0_ack!293))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!293)))
       ((_ to_fp 11 53) y0_ack!293)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!292)
                                   ((_ to_fp 11 53) x0_ack!300)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!293)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!294)
                                   ((_ to_fp 11 53) z3_ack!297))
                           ((_ to_fp 11 53) z1_ack!295))
                   ((_ to_fp 11 53) z2_ack!296))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
