(declare-fun x1_ack!302 () (_ BitVec 64))
(declare-fun x0_ack!307 () (_ BitVec 64))
(declare-fun y0_ack!303 () (_ BitVec 64))
(declare-fun x_ack!305 () (_ BitVec 64))
(declare-fun y_ack!306 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!304 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!307) ((_ to_fp 11 53) x1_ack!302))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!303) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) x0_ack!307))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) x1_ack!302))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!306) ((_ to_fp 11 53) y0_ack!303))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!306) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) x0_ack!307))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!305) ((_ to_fp 11 53) x1_ack!302))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!306) ((_ to_fp 11 53) y0_ack!303))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!306) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!302)
                       ((_ to_fp 11 53) x0_ack!307))
               ((_ to_fp 11 53) x0_ack!307))
       ((_ to_fp 11 53) x1_ack!302)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!302)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!302)
                       ((_ to_fp 11 53) x0_ack!307)))
       ((_ to_fp 11 53) x0_ack!307)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!303))
               ((_ to_fp 11 53) y0_ack!303))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!303)))
       ((_ to_fp 11 53) y0_ack!303)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!305)
                                   ((_ to_fp 11 53) x0_ack!307))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!302)
                                   ((_ to_fp 11 53) x0_ack!307)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!306)
                                   ((_ to_fp 11 53) y0_ack!303))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!303))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!304)))

(check-sat)
(exit)
