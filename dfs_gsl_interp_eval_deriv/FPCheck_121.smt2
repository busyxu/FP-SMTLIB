(declare-fun x1_ack!1346 () (_ BitVec 64))
(declare-fun x0_ack!1352 () (_ BitVec 64))
(declare-fun x2_ack!1347 () (_ BitVec 64))
(declare-fun xx_ack!1351 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1348 () (_ BitVec 64))
(declare-fun y1_ack!1349 () (_ BitVec 64))
(declare-fun y2_ack!1350 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1352) ((_ to_fp 11 53) x1_ack!1346)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1346) ((_ to_fp 11 53) x2_ack!1347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1346)
                       ((_ to_fp 11 53) x0_ack!1352))
               ((_ to_fp 11 53) x0_ack!1352))
       ((_ to_fp 11 53) x1_ack!1346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1346)
                       ((_ to_fp 11 53) x0_ack!1352)))
       ((_ to_fp 11 53) x0_ack!1352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1347)
                       ((_ to_fp 11 53) x1_ack!1346))
               ((_ to_fp 11 53) x1_ack!1346))
       ((_ to_fp 11 53) x2_ack!1347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1347)
                       ((_ to_fp 11 53) x1_ack!1346)))
       ((_ to_fp 11 53) x1_ack!1346)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1346)
                    ((_ to_fp 11 53) x0_ack!1352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1347)
                    ((_ to_fp 11 53) x1_ack!1346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1351) ((_ to_fp 11 53) x0_ack!1352))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1351) ((_ to_fp 11 53) x2_ack!1347))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1351) ((_ to_fp 11 53) x0_ack!1352))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1351) ((_ to_fp 11 53) x1_ack!1346))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1346)
               ((_ to_fp 11 53) x0_ack!1352))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1350)
                           ((_ to_fp 11 53) y1_ack!1349))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1347)
                                   ((_ to_fp 11 53) x1_ack!1346)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1349)
                           ((_ to_fp 11 53) y0_ack!1348))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1346)
                                   ((_ to_fp 11 53) x0_ack!1352)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1347)
                                   ((_ to_fp 11 53) x1_ack!1346))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1346)
                                   ((_ to_fp 11 53) x0_ack!1352))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1346)
                    ((_ to_fp 11 53) x0_ack!1352))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
