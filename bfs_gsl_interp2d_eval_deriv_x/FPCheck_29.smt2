(declare-fun x1_ack!298 () (_ BitVec 64))
(declare-fun x0_ack!302 () (_ BitVec 64))
(declare-fun y0_ack!299 () (_ BitVec 64))
(declare-fun x_ack!300 () (_ BitVec 64))
(declare-fun y_ack!301 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!302) ((_ to_fp 11 53) x1_ack!298))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!299) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!300) ((_ to_fp 11 53) x0_ack!302))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!300) ((_ to_fp 11 53) x1_ack!298))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!301) ((_ to_fp 11 53) y0_ack!299))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!301) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!300) ((_ to_fp 11 53) x0_ack!302))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!300) ((_ to_fp 11 53) x1_ack!298))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!301) ((_ to_fp 11 53) y0_ack!299))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!301) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!301)
                                   ((_ to_fp 11 53) y0_ack!299))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!299))))))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!1)))

(check-sat)
(exit)
