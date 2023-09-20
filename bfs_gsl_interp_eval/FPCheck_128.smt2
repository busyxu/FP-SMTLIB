(declare-fun x1_ack!1415 () (_ BitVec 64))
(declare-fun x0_ack!1421 () (_ BitVec 64))
(declare-fun x2_ack!1416 () (_ BitVec 64))
(declare-fun xx_ack!1420 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1417 () (_ BitVec 64))
(declare-fun y1_ack!1418 () (_ BitVec 64))
(declare-fun y2_ack!1419 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1421) ((_ to_fp 11 53) x1_ack!1415)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1415) ((_ to_fp 11 53) x2_ack!1416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1415)
                       ((_ to_fp 11 53) x0_ack!1421))
               ((_ to_fp 11 53) x0_ack!1421))
       ((_ to_fp 11 53) x1_ack!1415)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1415)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1415)
                       ((_ to_fp 11 53) x0_ack!1421)))
       ((_ to_fp 11 53) x0_ack!1421)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1416)
                       ((_ to_fp 11 53) x1_ack!1415))
               ((_ to_fp 11 53) x1_ack!1415))
       ((_ to_fp 11 53) x2_ack!1416)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1416)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1416)
                       ((_ to_fp 11 53) x1_ack!1415)))
       ((_ to_fp 11 53) x1_ack!1415)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1415)
                    ((_ to_fp 11 53) x0_ack!1421))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1416)
                    ((_ to_fp 11 53) x1_ack!1415))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1420) ((_ to_fp 11 53) x0_ack!1421))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1420) ((_ to_fp 11 53) x2_ack!1416))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1420) ((_ to_fp 11 53) x0_ack!1421))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1420) ((_ to_fp 11 53) x1_ack!1415)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1415) ((_ to_fp 11 53) xx_ack!1420))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1416)
               ((_ to_fp 11 53) x1_ack!1415))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1419)
                           ((_ to_fp 11 53) y1_ack!1418))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1416)
                                   ((_ to_fp 11 53) x1_ack!1415)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1418)
                           ((_ to_fp 11 53) y0_ack!1417))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1415)
                                   ((_ to_fp 11 53) x0_ack!1421)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1416)
                                   ((_ to_fp 11 53) x1_ack!1415))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1415)
                                   ((_ to_fp 11 53) x0_ack!1421))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
