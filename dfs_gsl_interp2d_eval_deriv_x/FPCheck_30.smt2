(declare-fun x1_ack!278 () (_ BitVec 64))
(declare-fun x0_ack!283 () (_ BitVec 64))
(declare-fun y0_ack!279 () (_ BitVec 64))
(declare-fun x_ack!281 () (_ BitVec 64))
(declare-fun y_ack!282 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!280 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!283) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!279) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!281) ((_ to_fp 11 53) x0_ack!283))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!281) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!282) ((_ to_fp 11 53) y0_ack!279))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!282) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!281) ((_ to_fp 11 53) x0_ack!283))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!281) ((_ to_fp 11 53) x1_ack!278))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!282) ((_ to_fp 11 53) y0_ack!279))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!282) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!278)
                       ((_ to_fp 11 53) x0_ack!283))
               ((_ to_fp 11 53) x0_ack!283))
       ((_ to_fp 11 53) x1_ack!278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!278)
                       ((_ to_fp 11 53) x0_ack!283)))
       ((_ to_fp 11 53) x0_ack!283)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!279))
               ((_ to_fp 11 53) y0_ack!279))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!279)))
       ((_ to_fp 11 53) y0_ack!279)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!282)
                                   ((_ to_fp 11 53) y0_ack!279))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!279))))))
  (FPCHECK_FMUL_OVERFLOW a!1 z3_ack!280)))

(check-sat)
(exit)
