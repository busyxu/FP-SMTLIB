(declare-fun x1_ack!620 () (_ BitVec 64))
(declare-fun x0_ack!627 () (_ BitVec 64))
(declare-fun x2_ack!621 () (_ BitVec 64))
(declare-fun b_ack!626 () (_ BitVec 64))
(declare-fun a_ack!625 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!622 () (_ BitVec 64))
(declare-fun y1_ack!623 () (_ BitVec 64))
(declare-fun y2_ack!624 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!627) ((_ to_fp 11 53) x1_ack!620)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!620) ((_ to_fp 11 53) x2_ack!621)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!620)
                       ((_ to_fp 11 53) x0_ack!627))
               ((_ to_fp 11 53) x0_ack!627))
       ((_ to_fp 11 53) x1_ack!620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!620)
                       ((_ to_fp 11 53) x0_ack!627)))
       ((_ to_fp 11 53) x0_ack!627)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!621)
                       ((_ to_fp 11 53) x1_ack!620))
               ((_ to_fp 11 53) x1_ack!620))
       ((_ to_fp 11 53) x2_ack!621)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!621)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!621)
                       ((_ to_fp 11 53) x1_ack!620)))
       ((_ to_fp 11 53) x1_ack!620)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!620)
                    ((_ to_fp 11 53) x0_ack!627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!621)
                    ((_ to_fp 11 53) x1_ack!620))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!625) ((_ to_fp 11 53) b_ack!626))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!625) ((_ to_fp 11 53) x0_ack!627))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!626) ((_ to_fp 11 53) x2_ack!621))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!625) ((_ to_fp 11 53) b_ack!626))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!625) ((_ to_fp 11 53) x0_ack!627))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!625) ((_ to_fp 11 53) x1_ack!620))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!626) ((_ to_fp 11 53) x0_ack!627))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!626) ((_ to_fp 11 53) x1_ack!620)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!620) ((_ to_fp 11 53) b_ack!626))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!620)
                    ((_ to_fp 11 53) x0_ack!627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!624)
                           ((_ to_fp 11 53) y1_ack!623))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!621)
                                   ((_ to_fp 11 53) x1_ack!620)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!623)
                           ((_ to_fp 11 53) y0_ack!622))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!620)
                                   ((_ to_fp 11 53) x0_ack!627)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!621)
                                   ((_ to_fp 11 53) x1_ack!620))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!620)
                                   ((_ to_fp 11 53) x0_ack!627))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!620)
            ((_ to_fp 11 53) x0_ack!627))
    a!4))))

(check-sat)
(exit)
