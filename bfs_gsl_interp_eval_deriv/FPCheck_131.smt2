(declare-fun x1_ack!1439 () (_ BitVec 64))
(declare-fun x0_ack!1445 () (_ BitVec 64))
(declare-fun x2_ack!1440 () (_ BitVec 64))
(declare-fun xx_ack!1444 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1441 () (_ BitVec 64))
(declare-fun y1_ack!1442 () (_ BitVec 64))
(declare-fun y2_ack!1443 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1445) ((_ to_fp 11 53) x1_ack!1439)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1439) ((_ to_fp 11 53) x2_ack!1440)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1439)
                       ((_ to_fp 11 53) x0_ack!1445))
               ((_ to_fp 11 53) x0_ack!1445))
       ((_ to_fp 11 53) x1_ack!1439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1439)
                       ((_ to_fp 11 53) x0_ack!1445)))
       ((_ to_fp 11 53) x0_ack!1445)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1440)
                       ((_ to_fp 11 53) x1_ack!1439))
               ((_ to_fp 11 53) x1_ack!1439))
       ((_ to_fp 11 53) x2_ack!1440)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1440)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1440)
                       ((_ to_fp 11 53) x1_ack!1439)))
       ((_ to_fp 11 53) x1_ack!1439)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1439)
                    ((_ to_fp 11 53) x0_ack!1445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1440)
                    ((_ to_fp 11 53) x1_ack!1439))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1444) ((_ to_fp 11 53) x0_ack!1445))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1444) ((_ to_fp 11 53) x2_ack!1440))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1444) ((_ to_fp 11 53) x0_ack!1445))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1444) ((_ to_fp 11 53) x1_ack!1439)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1439) ((_ to_fp 11 53) xx_ack!1444))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1440)
               ((_ to_fp 11 53) x1_ack!1439))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1443)
                           ((_ to_fp 11 53) y1_ack!1442))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1440)
                                   ((_ to_fp 11 53) x1_ack!1439)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1442)
                           ((_ to_fp 11 53) y0_ack!1441))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1439)
                                   ((_ to_fp 11 53) x0_ack!1445)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1440)
                                   ((_ to_fp 11 53) x1_ack!1439))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1439)
                                   ((_ to_fp 11 53) x0_ack!1445))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1440)
                    ((_ to_fp 11 53) x1_ack!1439)))))))

(check-sat)
(exit)
