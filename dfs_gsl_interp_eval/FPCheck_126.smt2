(declare-fun x1_ack!1410 () (_ BitVec 64))
(declare-fun x0_ack!1416 () (_ BitVec 64))
(declare-fun x2_ack!1411 () (_ BitVec 64))
(declare-fun xx_ack!1415 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1412 () (_ BitVec 64))
(declare-fun y1_ack!1413 () (_ BitVec 64))
(declare-fun y2_ack!1414 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1416) ((_ to_fp 11 53) x1_ack!1410)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1410) ((_ to_fp 11 53) x2_ack!1411)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1410)
                       ((_ to_fp 11 53) x0_ack!1416))
               ((_ to_fp 11 53) x0_ack!1416))
       ((_ to_fp 11 53) x1_ack!1410)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1410)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1410)
                       ((_ to_fp 11 53) x0_ack!1416)))
       ((_ to_fp 11 53) x0_ack!1416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1411)
                       ((_ to_fp 11 53) x1_ack!1410))
               ((_ to_fp 11 53) x1_ack!1410))
       ((_ to_fp 11 53) x2_ack!1411)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1411)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1411)
                       ((_ to_fp 11 53) x1_ack!1410)))
       ((_ to_fp 11 53) x1_ack!1410)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1410)
                    ((_ to_fp 11 53) x0_ack!1416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1411)
                    ((_ to_fp 11 53) x1_ack!1410))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x0_ack!1416))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x2_ack!1411))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x0_ack!1416))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x1_ack!1410))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1410)
               ((_ to_fp 11 53) x0_ack!1416))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1414)
                           ((_ to_fp 11 53) y1_ack!1413))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1411)
                                   ((_ to_fp 11 53) x1_ack!1410)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1413)
                           ((_ to_fp 11 53) y0_ack!1412))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1410)
                                   ((_ to_fp 11 53) x0_ack!1416)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1411)
                                   ((_ to_fp 11 53) x1_ack!1410))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1410)
                                   ((_ to_fp 11 53) x0_ack!1416))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1410)
                                   ((_ to_fp 11 53) x0_ack!1416))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!1413)
                    ((_ to_fp 11 53) y0_ack!1412))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1410)
                    ((_ to_fp 11 53) x0_ack!1416)))
    a!5)))))

(check-sat)
(exit)
