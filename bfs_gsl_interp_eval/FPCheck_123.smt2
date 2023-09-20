(declare-fun x1_ack!1344 () (_ BitVec 64))
(declare-fun x0_ack!1350 () (_ BitVec 64))
(declare-fun x2_ack!1345 () (_ BitVec 64))
(declare-fun xx_ack!1349 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1346 () (_ BitVec 64))
(declare-fun y1_ack!1347 () (_ BitVec 64))
(declare-fun y2_ack!1348 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1350) ((_ to_fp 11 53) x1_ack!1344)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1344) ((_ to_fp 11 53) x2_ack!1345)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1344)
                       ((_ to_fp 11 53) x0_ack!1350))
               ((_ to_fp 11 53) x0_ack!1350))
       ((_ to_fp 11 53) x1_ack!1344)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1344)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1344)
                       ((_ to_fp 11 53) x0_ack!1350)))
       ((_ to_fp 11 53) x0_ack!1350)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1345)
                       ((_ to_fp 11 53) x1_ack!1344))
               ((_ to_fp 11 53) x1_ack!1344))
       ((_ to_fp 11 53) x2_ack!1345)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1345)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1345)
                       ((_ to_fp 11 53) x1_ack!1344)))
       ((_ to_fp 11 53) x1_ack!1344)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1344)
                    ((_ to_fp 11 53) x0_ack!1350))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1345)
                    ((_ to_fp 11 53) x1_ack!1344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1349) ((_ to_fp 11 53) x0_ack!1350))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1349) ((_ to_fp 11 53) x2_ack!1345))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1349) ((_ to_fp 11 53) x0_ack!1350))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1349) ((_ to_fp 11 53) x1_ack!1344)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1344) ((_ to_fp 11 53) xx_ack!1349))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1345)
               ((_ to_fp 11 53) x1_ack!1344))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1348)
                           ((_ to_fp 11 53) y1_ack!1347))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1345)
                                   ((_ to_fp 11 53) x1_ack!1344)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1347)
                           ((_ to_fp 11 53) y0_ack!1346))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1344)
                                   ((_ to_fp 11 53) x0_ack!1350)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1345)
                                   ((_ to_fp 11 53) x1_ack!1344))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1344)
                                   ((_ to_fp 11 53) x0_ack!1350))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1345)
                    ((_ to_fp 11 53) x1_ack!1344))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
