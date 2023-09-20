(declare-fun x1_ack!5646 () (_ BitVec 64))
(declare-fun x0_ack!5653 () (_ BitVec 64))
(declare-fun x2_ack!5647 () (_ BitVec 64))
(declare-fun b_ack!5652 () (_ BitVec 64))
(declare-fun a_ack!5651 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5648 () (_ BitVec 64))
(declare-fun y1_ack!5649 () (_ BitVec 64))
(declare-fun y2_ack!5650 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5653) ((_ to_fp 11 53) x1_ack!5646)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5646) ((_ to_fp 11 53) x2_ack!5647)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5646)
                       ((_ to_fp 11 53) x0_ack!5653))
               ((_ to_fp 11 53) x0_ack!5653))
       ((_ to_fp 11 53) x1_ack!5646)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5646)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5646)
                       ((_ to_fp 11 53) x0_ack!5653)))
       ((_ to_fp 11 53) x0_ack!5653)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5647)
                       ((_ to_fp 11 53) x1_ack!5646))
               ((_ to_fp 11 53) x1_ack!5646))
       ((_ to_fp 11 53) x2_ack!5647)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5647)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5647)
                       ((_ to_fp 11 53) x1_ack!5646)))
       ((_ to_fp 11 53) x1_ack!5646)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5646)
                    ((_ to_fp 11 53) x0_ack!5653))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5647)
                    ((_ to_fp 11 53) x1_ack!5646))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5651) ((_ to_fp 11 53) b_ack!5652))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5651) ((_ to_fp 11 53) x0_ack!5653))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5652) ((_ to_fp 11 53) x2_ack!5647))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5651) ((_ to_fp 11 53) b_ack!5652))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5651) ((_ to_fp 11 53) x0_ack!5653))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5651) ((_ to_fp 11 53) x1_ack!5646))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5652) ((_ to_fp 11 53) x0_ack!5653))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5652) ((_ to_fp 11 53) x1_ack!5646)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5646) ((_ to_fp 11 53) b_ack!5652))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5646)
                    ((_ to_fp 11 53) x0_ack!5653))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5650)
                           ((_ to_fp 11 53) y1_ack!5649))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5647)
                                   ((_ to_fp 11 53) x1_ack!5646)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5649)
                           ((_ to_fp 11 53) y0_ack!5648))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5646)
                                   ((_ to_fp 11 53) x0_ack!5653)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5647)
                                   ((_ to_fp 11 53) x1_ack!5646))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5646)
                                   ((_ to_fp 11 53) x0_ack!5653))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5646)
                    ((_ to_fp 11 53) x0_ack!5653)))))))

(check-sat)
(exit)
