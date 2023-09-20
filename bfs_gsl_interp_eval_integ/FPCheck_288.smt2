(declare-fun x1_ack!3534 () (_ BitVec 64))
(declare-fun x0_ack!3541 () (_ BitVec 64))
(declare-fun x2_ack!3535 () (_ BitVec 64))
(declare-fun b_ack!3540 () (_ BitVec 64))
(declare-fun a_ack!3539 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3536 () (_ BitVec 64))
(declare-fun y1_ack!3537 () (_ BitVec 64))
(declare-fun y2_ack!3538 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3541) ((_ to_fp 11 53) x1_ack!3534)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3534) ((_ to_fp 11 53) x2_ack!3535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3534)
                       ((_ to_fp 11 53) x0_ack!3541))
               ((_ to_fp 11 53) x0_ack!3541))
       ((_ to_fp 11 53) x1_ack!3534)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3534)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3534)
                       ((_ to_fp 11 53) x0_ack!3541)))
       ((_ to_fp 11 53) x0_ack!3541)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3535)
                       ((_ to_fp 11 53) x1_ack!3534))
               ((_ to_fp 11 53) x1_ack!3534))
       ((_ to_fp 11 53) x2_ack!3535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3535)
                       ((_ to_fp 11 53) x1_ack!3534)))
       ((_ to_fp 11 53) x1_ack!3534)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3534)
                    ((_ to_fp 11 53) x0_ack!3541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3535)
                    ((_ to_fp 11 53) x1_ack!3534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3539) ((_ to_fp 11 53) b_ack!3540))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3539) ((_ to_fp 11 53) x0_ack!3541))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3540) ((_ to_fp 11 53) x2_ack!3535))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3539) ((_ to_fp 11 53) b_ack!3540))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3539) ((_ to_fp 11 53) x0_ack!3541))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3539) ((_ to_fp 11 53) x1_ack!3534)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3534) ((_ to_fp 11 53) a_ack!3539))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3540) ((_ to_fp 11 53) x1_ack!3534))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3540) ((_ to_fp 11 53) x2_ack!3535)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3535)
                    ((_ to_fp 11 53) x1_ack!3534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3538)
                           ((_ to_fp 11 53) y1_ack!3537))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3535)
                                   ((_ to_fp 11 53) x1_ack!3534)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3537)
                           ((_ to_fp 11 53) y0_ack!3536))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3534)
                                   ((_ to_fp 11 53) x0_ack!3541)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3535)
                                   ((_ to_fp 11 53) x1_ack!3534))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3534)
                                   ((_ to_fp 11 53) x0_ack!3541))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3535)
                    ((_ to_fp 11 53) x1_ack!3534))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
