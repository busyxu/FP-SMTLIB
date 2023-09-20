(declare-fun x1_ack!1351 () (_ BitVec 64))
(declare-fun x0_ack!1357 () (_ BitVec 64))
(declare-fun x2_ack!1352 () (_ BitVec 64))
(declare-fun xx_ack!1356 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1353 () (_ BitVec 64))
(declare-fun y1_ack!1354 () (_ BitVec 64))
(declare-fun y2_ack!1355 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1357) ((_ to_fp 11 53) x1_ack!1351)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1351) ((_ to_fp 11 53) x2_ack!1352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1351)
                       ((_ to_fp 11 53) x0_ack!1357))
               ((_ to_fp 11 53) x0_ack!1357))
       ((_ to_fp 11 53) x1_ack!1351)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1351)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1351)
                       ((_ to_fp 11 53) x0_ack!1357)))
       ((_ to_fp 11 53) x0_ack!1357)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1352)
                       ((_ to_fp 11 53) x1_ack!1351))
               ((_ to_fp 11 53) x1_ack!1351))
       ((_ to_fp 11 53) x2_ack!1352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1352)
                       ((_ to_fp 11 53) x1_ack!1351)))
       ((_ to_fp 11 53) x1_ack!1351)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1351)
                    ((_ to_fp 11 53) x0_ack!1357))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1352)
                    ((_ to_fp 11 53) x1_ack!1351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1356) ((_ to_fp 11 53) x0_ack!1357))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1356) ((_ to_fp 11 53) x2_ack!1352))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1356) ((_ to_fp 11 53) x0_ack!1357))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1356) ((_ to_fp 11 53) x1_ack!1351)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1351) ((_ to_fp 11 53) xx_ack!1356))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1352)
               ((_ to_fp 11 53) x1_ack!1351))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1355)
                           ((_ to_fp 11 53) y1_ack!1354))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1352)
                                   ((_ to_fp 11 53) x1_ack!1351)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1354)
                           ((_ to_fp 11 53) y0_ack!1353))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1351)
                                   ((_ to_fp 11 53) x0_ack!1357)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1352)
                                   ((_ to_fp 11 53) x1_ack!1351))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1351)
                                   ((_ to_fp 11 53) x0_ack!1357))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1352)
                                   ((_ to_fp 11 53) x1_ack!1351))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!1355)
                    ((_ to_fp 11 53) y1_ack!1354))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1352)
                    ((_ to_fp 11 53) x1_ack!1351)))
    a!5)))))

(check-sat)
(exit)
