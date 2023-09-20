(declare-fun x1_ack!623 () (_ BitVec 64))
(declare-fun x0_ack!629 () (_ BitVec 64))
(declare-fun x2_ack!624 () (_ BitVec 64))
(declare-fun xx_ack!628 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!625 () (_ BitVec 64))
(declare-fun y1_ack!626 () (_ BitVec 64))
(declare-fun y2_ack!627 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!629) ((_ to_fp 11 53) x1_ack!623)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!623) ((_ to_fp 11 53) x2_ack!624)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!623)
                       ((_ to_fp 11 53) x0_ack!629))
               ((_ to_fp 11 53) x0_ack!629))
       ((_ to_fp 11 53) x1_ack!623)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!623)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!623)
                       ((_ to_fp 11 53) x0_ack!629)))
       ((_ to_fp 11 53) x0_ack!629)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!624)
                       ((_ to_fp 11 53) x1_ack!623))
               ((_ to_fp 11 53) x1_ack!623))
       ((_ to_fp 11 53) x2_ack!624)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!624)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!624)
                       ((_ to_fp 11 53) x1_ack!623)))
       ((_ to_fp 11 53) x1_ack!623)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!623)
                    ((_ to_fp 11 53) x0_ack!629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!624)
                    ((_ to_fp 11 53) x1_ack!623))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!628) ((_ to_fp 11 53) x0_ack!629))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!628) ((_ to_fp 11 53) x2_ack!624))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!628) ((_ to_fp 11 53) x0_ack!629))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!628) ((_ to_fp 11 53) x1_ack!623))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!623)
               ((_ to_fp 11 53) x0_ack!629))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!627)
                           ((_ to_fp 11 53) y1_ack!626))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!624)
                                   ((_ to_fp 11 53) x1_ack!623)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!626)
                           ((_ to_fp 11 53) y0_ack!625))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!623)
                                   ((_ to_fp 11 53) x0_ack!629)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!624)
                                   ((_ to_fp 11 53) x1_ack!623))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!623)
                                   ((_ to_fp 11 53) x0_ack!629))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!623)
                    ((_ to_fp 11 53) x0_ack!629))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
