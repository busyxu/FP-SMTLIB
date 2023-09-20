(declare-fun x1_ack!553 () (_ BitVec 64))
(declare-fun x0_ack!557 () (_ BitVec 64))
(declare-fun y0_ack!554 () (_ BitVec 64))
(declare-fun x_ack!555 () (_ BitVec 64))
(declare-fun y_ack!556 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!557) ((_ to_fp 11 53) x1_ack!553))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!554) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!555) ((_ to_fp 11 53) x0_ack!557))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!555) ((_ to_fp 11 53) x1_ack!553)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!556) ((_ to_fp 11 53) y0_ack!554))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!556) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!555)
                                   ((_ to_fp 11 53) x0_ack!557))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!553)
                                   ((_ to_fp 11 53) x0_ack!557)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!556)
                                   ((_ to_fp 11 53) y0_ack!554))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!554))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
