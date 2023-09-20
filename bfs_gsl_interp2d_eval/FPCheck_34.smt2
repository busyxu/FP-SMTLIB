(declare-fun x1_ack!343 () (_ BitVec 64))
(declare-fun x0_ack!347 () (_ BitVec 64))
(declare-fun y0_ack!344 () (_ BitVec 64))
(declare-fun x_ack!345 () (_ BitVec 64))
(declare-fun y_ack!346 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!347) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!344) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x0_ack!347))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) y0_ack!344))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x0_ack!347))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) y0_ack!344))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!345)
                                   ((_ to_fp 11 53) x0_ack!347))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!343)
                                   ((_ to_fp 11 53) x0_ack!347)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!346)
                                   ((_ to_fp 11 53) y0_ack!344))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!344))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
