(declare-fun x1_ack!543 () (_ BitVec 64))
(declare-fun x0_ack!547 () (_ BitVec 64))
(declare-fun y0_ack!544 () (_ BitVec 64))
(declare-fun x_ack!545 () (_ BitVec 64))
(declare-fun y_ack!546 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!547) ((_ to_fp 11 53) x1_ack!543))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!544) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!545) ((_ to_fp 11 53) x0_ack!547))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!545) ((_ to_fp 11 53) x1_ack!543)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!546) ((_ to_fp 11 53) y0_ack!544))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!546) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!545)
                                   ((_ to_fp 11 53) x0_ack!547))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!543)
                                   ((_ to_fp 11 53) x0_ack!547)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!546)
                                   ((_ to_fp 11 53) y0_ack!544))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!544))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
