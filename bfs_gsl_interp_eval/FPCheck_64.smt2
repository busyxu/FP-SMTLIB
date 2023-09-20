(declare-fun x1_ack!584 () (_ BitVec 64))
(declare-fun x0_ack!590 () (_ BitVec 64))
(declare-fun x2_ack!585 () (_ BitVec 64))
(declare-fun xx_ack!589 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!586 () (_ BitVec 64))
(declare-fun y1_ack!587 () (_ BitVec 64))
(declare-fun y2_ack!588 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!590) ((_ to_fp 11 53) x1_ack!584)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!584) ((_ to_fp 11 53) x2_ack!585)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!584)
                       ((_ to_fp 11 53) x0_ack!590))
               ((_ to_fp 11 53) x0_ack!590))
       ((_ to_fp 11 53) x1_ack!584)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!584)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!584)
                       ((_ to_fp 11 53) x0_ack!590)))
       ((_ to_fp 11 53) x0_ack!590)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!585)
                       ((_ to_fp 11 53) x1_ack!584))
               ((_ to_fp 11 53) x1_ack!584))
       ((_ to_fp 11 53) x2_ack!585)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!585)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!585)
                       ((_ to_fp 11 53) x1_ack!584)))
       ((_ to_fp 11 53) x1_ack!584)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!584)
                    ((_ to_fp 11 53) x0_ack!590))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!585)
                    ((_ to_fp 11 53) x1_ack!584))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!589) ((_ to_fp 11 53) x0_ack!590))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!589) ((_ to_fp 11 53) x2_ack!585))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!589) ((_ to_fp 11 53) x0_ack!590))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!589) ((_ to_fp 11 53) x1_ack!584))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!584)
               ((_ to_fp 11 53) x0_ack!590))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!588)
                           ((_ to_fp 11 53) y1_ack!587))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!585)
                                   ((_ to_fp 11 53) x1_ack!584)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!587)
                           ((_ to_fp 11 53) y0_ack!586))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!584)
                                   ((_ to_fp 11 53) x0_ack!590)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!585)
                                   ((_ to_fp 11 53) x1_ack!584))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!584)
                                   ((_ to_fp 11 53) x0_ack!590))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!584)
            ((_ to_fp 11 53) x0_ack!590))
    a!4))))

(check-sat)
(exit)
