(declare-fun x1_ack!1330 () (_ BitVec 64))
(declare-fun x0_ack!1336 () (_ BitVec 64))
(declare-fun x2_ack!1331 () (_ BitVec 64))
(declare-fun xx_ack!1335 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!1332 () (_ BitVec 64))
(declare-fun y1_ack!1333 () (_ BitVec 64))
(declare-fun y2_ack!1334 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1336) ((_ to_fp 11 53) x1_ack!1330)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1330) ((_ to_fp 11 53) x2_ack!1331)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1330)
                       ((_ to_fp 11 53) x0_ack!1336))
               ((_ to_fp 11 53) x0_ack!1336))
       ((_ to_fp 11 53) x1_ack!1330)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1330)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1330)
                       ((_ to_fp 11 53) x0_ack!1336)))
       ((_ to_fp 11 53) x0_ack!1336)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1331)
                       ((_ to_fp 11 53) x1_ack!1330))
               ((_ to_fp 11 53) x1_ack!1330))
       ((_ to_fp 11 53) x2_ack!1331)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1331)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1331)
                       ((_ to_fp 11 53) x1_ack!1330)))
       ((_ to_fp 11 53) x1_ack!1330)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1330)
                    ((_ to_fp 11 53) x0_ack!1336))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1331)
                    ((_ to_fp 11 53) x1_ack!1330))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1335) ((_ to_fp 11 53) x0_ack!1336))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1335) ((_ to_fp 11 53) x2_ack!1331))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1335) ((_ to_fp 11 53) x0_ack!1336))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1335) ((_ to_fp 11 53) x1_ack!1330)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1330) ((_ to_fp 11 53) xx_ack!1335))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1331)
               ((_ to_fp 11 53) x1_ack!1330))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1334)
                           ((_ to_fp 11 53) y1_ack!1333))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1331)
                                   ((_ to_fp 11 53) x1_ack!1330)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1333)
                           ((_ to_fp 11 53) y0_ack!1332))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1330)
                                   ((_ to_fp 11 53) x0_ack!1336)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1331)
                                   ((_ to_fp 11 53) x1_ack!1330))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1330)
                                   ((_ to_fp 11 53) x0_ack!1336))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1331)
                    ((_ to_fp 11 53) x1_ack!1330))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
