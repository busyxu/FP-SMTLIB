(declare-fun x1_ack!636 () (_ BitVec 64))
(declare-fun x0_ack!643 () (_ BitVec 64))
(declare-fun x2_ack!637 () (_ BitVec 64))
(declare-fun b_ack!642 () (_ BitVec 64))
(declare-fun a_ack!641 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!638 () (_ BitVec 64))
(declare-fun y1_ack!639 () (_ BitVec 64))
(declare-fun y2_ack!640 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!643) ((_ to_fp 11 53) x1_ack!636)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!636) ((_ to_fp 11 53) x2_ack!637)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!636)
                       ((_ to_fp 11 53) x0_ack!643))
               ((_ to_fp 11 53) x0_ack!643))
       ((_ to_fp 11 53) x1_ack!636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!636)
                       ((_ to_fp 11 53) x0_ack!643)))
       ((_ to_fp 11 53) x0_ack!643)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!637)
                       ((_ to_fp 11 53) x1_ack!636))
               ((_ to_fp 11 53) x1_ack!636))
       ((_ to_fp 11 53) x2_ack!637)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!637)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!637)
                       ((_ to_fp 11 53) x1_ack!636)))
       ((_ to_fp 11 53) x1_ack!636)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!636)
                    ((_ to_fp 11 53) x0_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!637)
                    ((_ to_fp 11 53) x1_ack!636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) b_ack!642))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) x0_ack!643))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!642) ((_ to_fp 11 53) x2_ack!637))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) b_ack!642))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) x0_ack!643))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) x1_ack!636))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!642) ((_ to_fp 11 53) x0_ack!643))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!642) ((_ to_fp 11 53) x1_ack!636)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!636) ((_ to_fp 11 53) b_ack!642))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!636)
                    ((_ to_fp 11 53) x0_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!640)
                           ((_ to_fp 11 53) y1_ack!639))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!637)
                                   ((_ to_fp 11 53) x1_ack!636)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!639)
                           ((_ to_fp 11 53) y0_ack!638))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!636)
                                   ((_ to_fp 11 53) x0_ack!643)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!637)
                                   ((_ to_fp 11 53) x1_ack!636))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!636)
                                   ((_ to_fp 11 53) x0_ack!643))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!636)
            ((_ to_fp 11 53) x0_ack!643))
    a!4))))

(check-sat)
(exit)
