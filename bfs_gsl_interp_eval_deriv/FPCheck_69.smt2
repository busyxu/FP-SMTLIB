(declare-fun x1_ack!655 () (_ BitVec 64))
(declare-fun x0_ack!661 () (_ BitVec 64))
(declare-fun x2_ack!656 () (_ BitVec 64))
(declare-fun xx_ack!660 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!657 () (_ BitVec 64))
(declare-fun y1_ack!658 () (_ BitVec 64))
(declare-fun y2_ack!659 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!661) ((_ to_fp 11 53) x1_ack!655)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!655) ((_ to_fp 11 53) x2_ack!656)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!655)
                       ((_ to_fp 11 53) x0_ack!661))
               ((_ to_fp 11 53) x0_ack!661))
       ((_ to_fp 11 53) x1_ack!655)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!655)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!655)
                       ((_ to_fp 11 53) x0_ack!661)))
       ((_ to_fp 11 53) x0_ack!661)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!656)
                       ((_ to_fp 11 53) x1_ack!655))
               ((_ to_fp 11 53) x1_ack!655))
       ((_ to_fp 11 53) x2_ack!656)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!656)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!656)
                       ((_ to_fp 11 53) x1_ack!655)))
       ((_ to_fp 11 53) x1_ack!655)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!655)
                    ((_ to_fp 11 53) x0_ack!661))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!656)
                    ((_ to_fp 11 53) x1_ack!655))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x0_ack!661))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x2_ack!656))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x0_ack!661))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x1_ack!655))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!655)
               ((_ to_fp 11 53) x0_ack!661))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!659)
                           ((_ to_fp 11 53) y1_ack!658))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!656)
                                   ((_ to_fp 11 53) x1_ack!655)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!658)
                           ((_ to_fp 11 53) y0_ack!657))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!655)
                                   ((_ to_fp 11 53) x0_ack!661)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!656)
                                   ((_ to_fp 11 53) x1_ack!655))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!655)
                                   ((_ to_fp 11 53) x0_ack!661))))))
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
                                   ((_ to_fp 11 53) x1_ack!655)
                                   ((_ to_fp 11 53) x0_ack!661))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!658)
                    ((_ to_fp 11 53) y0_ack!657))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!655)
                    ((_ to_fp 11 53) x0_ack!661)))
    a!5)))))

(check-sat)
(exit)
