(declare-fun x1_ack!1266 () (_ BitVec 64))
(declare-fun x0_ack!1272 () (_ BitVec 64))
(declare-fun x2_ack!1267 () (_ BitVec 64))
(declare-fun xx_ack!1271 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1268 () (_ BitVec 64))
(declare-fun y1_ack!1269 () (_ BitVec 64))
(declare-fun y2_ack!1270 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1272) ((_ to_fp 11 53) x1_ack!1266)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1266) ((_ to_fp 11 53) x2_ack!1267)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1266)
                       ((_ to_fp 11 53) x0_ack!1272))
               ((_ to_fp 11 53) x0_ack!1272))
       ((_ to_fp 11 53) x1_ack!1266)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1266)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1266)
                       ((_ to_fp 11 53) x0_ack!1272)))
       ((_ to_fp 11 53) x0_ack!1272)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1267)
                       ((_ to_fp 11 53) x1_ack!1266))
               ((_ to_fp 11 53) x1_ack!1266))
       ((_ to_fp 11 53) x2_ack!1267)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1267)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1267)
                       ((_ to_fp 11 53) x1_ack!1266)))
       ((_ to_fp 11 53) x1_ack!1266)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1266)
                    ((_ to_fp 11 53) x0_ack!1272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1267)
                    ((_ to_fp 11 53) x1_ack!1266))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1271) ((_ to_fp 11 53) x0_ack!1272))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1271) ((_ to_fp 11 53) x2_ack!1267))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1271) ((_ to_fp 11 53) x0_ack!1272))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1271) ((_ to_fp 11 53) x1_ack!1266)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1266) ((_ to_fp 11 53) xx_ack!1271))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1267)
               ((_ to_fp 11 53) x1_ack!1266))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1270)
                           ((_ to_fp 11 53) y1_ack!1269))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1267)
                                   ((_ to_fp 11 53) x1_ack!1266)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1269)
                           ((_ to_fp 11 53) y0_ack!1268))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1266)
                                   ((_ to_fp 11 53) x0_ack!1272)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1267)
                                   ((_ to_fp 11 53) x1_ack!1266))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1266)
                                   ((_ to_fp 11 53) x0_ack!1272))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!1267)
            ((_ to_fp 11 53) x1_ack!1266))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
