(declare-fun x1_ack!207 () (_ BitVec 64))
(declare-fun x0_ack!211 () (_ BitVec 64))
(declare-fun y0_ack!208 () (_ BitVec 64))
(declare-fun x_ack!209 () (_ BitVec 64))
(declare-fun y_ack!210 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!211) ((_ to_fp 11 53) x1_ack!207))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!208) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!209) ((_ to_fp 11 53) x0_ack!211))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!209) ((_ to_fp 11 53) x1_ack!207))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!210) ((_ to_fp 11 53) y0_ack!208))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!210) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!209) ((_ to_fp 11 53) x0_ack!211))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!209) ((_ to_fp 11 53) x1_ack!207))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!210) ((_ to_fp 11 53) y0_ack!208))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!210) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!207)
                       ((_ to_fp 11 53) x0_ack!211))
               ((_ to_fp 11 53) x0_ack!211))
       ((_ to_fp 11 53) x1_ack!207)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!207)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!207)
                       ((_ to_fp 11 53) x0_ack!211)))
       ((_ to_fp 11 53) x0_ack!211)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!208))
               ((_ to_fp 11 53) y0_ack!208))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!208)))
       ((_ to_fp 11 53) y0_ack!208)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!210)
                                   ((_ to_fp 11 53) y0_ack!208))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!208))))))
  (FPCHECK_FSUB_ACCURACY #x8000000000000000 a!1)))

(check-sat)
(exit)
