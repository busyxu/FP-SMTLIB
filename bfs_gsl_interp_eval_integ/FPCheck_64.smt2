(declare-fun x1_ack!630 () (_ BitVec 64))
(declare-fun x0_ack!637 () (_ BitVec 64))
(declare-fun x2_ack!631 () (_ BitVec 64))
(declare-fun b_ack!636 () (_ BitVec 64))
(declare-fun a_ack!635 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!632 () (_ BitVec 64))
(declare-fun y1_ack!633 () (_ BitVec 64))
(declare-fun y2_ack!634 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!637) ((_ to_fp 11 53) x1_ack!630)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!630) ((_ to_fp 11 53) x2_ack!631)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!630)
                       ((_ to_fp 11 53) x0_ack!637))
               ((_ to_fp 11 53) x0_ack!637))
       ((_ to_fp 11 53) x1_ack!630)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!630)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!630)
                       ((_ to_fp 11 53) x0_ack!637)))
       ((_ to_fp 11 53) x0_ack!637)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!631)
                       ((_ to_fp 11 53) x1_ack!630))
               ((_ to_fp 11 53) x1_ack!630))
       ((_ to_fp 11 53) x2_ack!631)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!631)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!631)
                       ((_ to_fp 11 53) x1_ack!630)))
       ((_ to_fp 11 53) x1_ack!630)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!630)
                    ((_ to_fp 11 53) x0_ack!637))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!631)
                    ((_ to_fp 11 53) x1_ack!630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!635) ((_ to_fp 11 53) b_ack!636))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!635) ((_ to_fp 11 53) x0_ack!637))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!636) ((_ to_fp 11 53) x2_ack!631))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!635) ((_ to_fp 11 53) b_ack!636))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!635) ((_ to_fp 11 53) x0_ack!637))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!635) ((_ to_fp 11 53) x1_ack!630))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!636) ((_ to_fp 11 53) x0_ack!637)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!630)
                    ((_ to_fp 11 53) x0_ack!637))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!634)
                           ((_ to_fp 11 53) y1_ack!633))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!631)
                                   ((_ to_fp 11 53) x1_ack!630)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!633)
                           ((_ to_fp 11 53) y0_ack!632))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!630)
                                   ((_ to_fp 11 53) x0_ack!637)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!631)
                                   ((_ to_fp 11 53) x1_ack!630))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!630)
                                   ((_ to_fp 11 53) x0_ack!637))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!630)
            ((_ to_fp 11 53) x0_ack!637))
    a!4))))

(check-sat)
(exit)
