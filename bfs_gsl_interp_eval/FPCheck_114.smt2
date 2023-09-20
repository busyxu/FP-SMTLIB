(declare-fun x1_ack!1220 () (_ BitVec 64))
(declare-fun x0_ack!1226 () (_ BitVec 64))
(declare-fun x2_ack!1221 () (_ BitVec 64))
(declare-fun xx_ack!1225 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1222 () (_ BitVec 64))
(declare-fun y1_ack!1223 () (_ BitVec 64))
(declare-fun y2_ack!1224 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1226) ((_ to_fp 11 53) x1_ack!1220)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1220) ((_ to_fp 11 53) x2_ack!1221)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1220)
                       ((_ to_fp 11 53) x0_ack!1226))
               ((_ to_fp 11 53) x0_ack!1226))
       ((_ to_fp 11 53) x1_ack!1220)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1220)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1220)
                       ((_ to_fp 11 53) x0_ack!1226)))
       ((_ to_fp 11 53) x0_ack!1226)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1221)
                       ((_ to_fp 11 53) x1_ack!1220))
               ((_ to_fp 11 53) x1_ack!1220))
       ((_ to_fp 11 53) x2_ack!1221)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1221)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1221)
                       ((_ to_fp 11 53) x1_ack!1220)))
       ((_ to_fp 11 53) x1_ack!1220)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1220)
                    ((_ to_fp 11 53) x0_ack!1226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1221)
                    ((_ to_fp 11 53) x1_ack!1220))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1225) ((_ to_fp 11 53) x0_ack!1226))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1225) ((_ to_fp 11 53) x2_ack!1221))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1225) ((_ to_fp 11 53) x0_ack!1226))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1225) ((_ to_fp 11 53) x1_ack!1220)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1220) ((_ to_fp 11 53) xx_ack!1225))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1221)
               ((_ to_fp 11 53) x1_ack!1220))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1224)
                           ((_ to_fp 11 53) y1_ack!1223))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1221)
                                   ((_ to_fp 11 53) x1_ack!1220)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1223)
                           ((_ to_fp 11 53) y0_ack!1222))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1220)
                                   ((_ to_fp 11 53) x0_ack!1226)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1221)
                                   ((_ to_fp 11 53) x1_ack!1220))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1220)
                                   ((_ to_fp 11 53) x0_ack!1226))))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
