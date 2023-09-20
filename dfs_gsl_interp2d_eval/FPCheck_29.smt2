(declare-fun x1_ack!277 () (_ BitVec 64))
(declare-fun x0_ack!281 () (_ BitVec 64))
(declare-fun y0_ack!278 () (_ BitVec 64))
(declare-fun x_ack!279 () (_ BitVec 64))
(declare-fun y_ack!280 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!281) ((_ to_fp 11 53) x1_ack!277))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!278) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!279) ((_ to_fp 11 53) x0_ack!281))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!279) ((_ to_fp 11 53) x1_ack!277))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!280) ((_ to_fp 11 53) y0_ack!278))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!280) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!279) ((_ to_fp 11 53) x0_ack!281))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!279) ((_ to_fp 11 53) x1_ack!277))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!280) ((_ to_fp 11 53) y0_ack!278))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!280) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!277)
                       ((_ to_fp 11 53) x0_ack!281))
               ((_ to_fp 11 53) x0_ack!281))
       ((_ to_fp 11 53) x1_ack!277)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!277)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!277)
                       ((_ to_fp 11 53) x0_ack!281)))
       ((_ to_fp 11 53) x0_ack!281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!278))
               ((_ to_fp 11 53) y0_ack!278))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!278)))
       ((_ to_fp 11 53) y0_ack!278)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!279)
                                   ((_ to_fp 11 53) x0_ack!281))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!277)
                                   ((_ to_fp 11 53) x0_ack!281)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!280)
                                   ((_ to_fp 11 53) y0_ack!278))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!278))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
