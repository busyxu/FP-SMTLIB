(declare-fun x1_ack!278 () (_ BitVec 64))
(declare-fun x0_ack!282 () (_ BitVec 64))
(declare-fun y0_ack!279 () (_ BitVec 64))
(declare-fun x_ack!280 () (_ BitVec 64))
(declare-fun y_ack!281 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!282) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!279) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!280) ((_ to_fp 11 53) x0_ack!282))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!280) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!281) ((_ to_fp 11 53) y0_ack!279))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!281) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!280) ((_ to_fp 11 53) x0_ack!282))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!280) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!281) ((_ to_fp 11 53) y0_ack!279))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!281) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!281)
                                   ((_ to_fp 11 53) y0_ack!279))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!279))))))
  (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
