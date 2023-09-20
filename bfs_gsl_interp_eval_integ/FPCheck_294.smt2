(declare-fun x1_ack!3619 () (_ BitVec 64))
(declare-fun x0_ack!3626 () (_ BitVec 64))
(declare-fun x2_ack!3620 () (_ BitVec 64))
(declare-fun b_ack!3625 () (_ BitVec 64))
(declare-fun a_ack!3624 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3621 () (_ BitVec 64))
(declare-fun y1_ack!3622 () (_ BitVec 64))
(declare-fun y2_ack!3623 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3626) ((_ to_fp 11 53) x1_ack!3619)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3619) ((_ to_fp 11 53) x2_ack!3620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3619)
                       ((_ to_fp 11 53) x0_ack!3626))
               ((_ to_fp 11 53) x0_ack!3626))
       ((_ to_fp 11 53) x1_ack!3619)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3619)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3619)
                       ((_ to_fp 11 53) x0_ack!3626)))
       ((_ to_fp 11 53) x0_ack!3626)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3620)
                       ((_ to_fp 11 53) x1_ack!3619))
               ((_ to_fp 11 53) x1_ack!3619))
       ((_ to_fp 11 53) x2_ack!3620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3620)
                       ((_ to_fp 11 53) x1_ack!3619)))
       ((_ to_fp 11 53) x1_ack!3619)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3619)
                    ((_ to_fp 11 53) x0_ack!3626))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3620)
                    ((_ to_fp 11 53) x1_ack!3619))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3624) ((_ to_fp 11 53) b_ack!3625))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3624) ((_ to_fp 11 53) x0_ack!3626))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3625) ((_ to_fp 11 53) x2_ack!3620))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3624) ((_ to_fp 11 53) b_ack!3625))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3624) ((_ to_fp 11 53) x0_ack!3626))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3624) ((_ to_fp 11 53) x1_ack!3619)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3619) ((_ to_fp 11 53) a_ack!3624))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3625) ((_ to_fp 11 53) x1_ack!3619))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3625) ((_ to_fp 11 53) x2_ack!3620)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3620)
                    ((_ to_fp 11 53) x1_ack!3619))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3623)
                           ((_ to_fp 11 53) y1_ack!3622))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3620)
                                   ((_ to_fp 11 53) x1_ack!3619)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3622)
                           ((_ to_fp 11 53) y0_ack!3621))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3619)
                                   ((_ to_fp 11 53) x0_ack!3626)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3620)
                                   ((_ to_fp 11 53) x1_ack!3619))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3619)
                                   ((_ to_fp 11 53) x0_ack!3626))))))
  (FPCHECK_FSUB_OVERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
