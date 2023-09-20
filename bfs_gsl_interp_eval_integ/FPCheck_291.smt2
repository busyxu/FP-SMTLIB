(declare-fun x1_ack!3579 () (_ BitVec 64))
(declare-fun x0_ack!3586 () (_ BitVec 64))
(declare-fun x2_ack!3580 () (_ BitVec 64))
(declare-fun b_ack!3585 () (_ BitVec 64))
(declare-fun a_ack!3584 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3581 () (_ BitVec 64))
(declare-fun y1_ack!3582 () (_ BitVec 64))
(declare-fun y2_ack!3583 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3586) ((_ to_fp 11 53) x1_ack!3579)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3579) ((_ to_fp 11 53) x2_ack!3580)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3579)
                       ((_ to_fp 11 53) x0_ack!3586))
               ((_ to_fp 11 53) x0_ack!3586))
       ((_ to_fp 11 53) x1_ack!3579)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3579)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3579)
                       ((_ to_fp 11 53) x0_ack!3586)))
       ((_ to_fp 11 53) x0_ack!3586)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3580)
                       ((_ to_fp 11 53) x1_ack!3579))
               ((_ to_fp 11 53) x1_ack!3579))
       ((_ to_fp 11 53) x2_ack!3580)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3580)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3580)
                       ((_ to_fp 11 53) x1_ack!3579)))
       ((_ to_fp 11 53) x1_ack!3579)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3579)
                    ((_ to_fp 11 53) x0_ack!3586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3580)
                    ((_ to_fp 11 53) x1_ack!3579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3584) ((_ to_fp 11 53) b_ack!3585))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3584) ((_ to_fp 11 53) x0_ack!3586))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3585) ((_ to_fp 11 53) x2_ack!3580))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3584) ((_ to_fp 11 53) b_ack!3585))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3584) ((_ to_fp 11 53) x0_ack!3586))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3584) ((_ to_fp 11 53) x1_ack!3579)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3579) ((_ to_fp 11 53) a_ack!3584))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3585) ((_ to_fp 11 53) x1_ack!3579))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3585) ((_ to_fp 11 53) x2_ack!3580)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3580)
                    ((_ to_fp 11 53) x1_ack!3579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3583)
                           ((_ to_fp 11 53) y1_ack!3582))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3580)
                                   ((_ to_fp 11 53) x1_ack!3579)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3582)
                           ((_ to_fp 11 53) y0_ack!3581))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3579)
                                   ((_ to_fp 11 53) x0_ack!3586)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3580)
                                   ((_ to_fp 11 53) x1_ack!3579))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3579)
                                   ((_ to_fp 11 53) x0_ack!3586))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3580)
                                   ((_ to_fp 11 53) x1_ack!3579))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!3583)
                    ((_ to_fp 11 53) y1_ack!3582))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3580)
                    ((_ to_fp 11 53) x1_ack!3579)))
    a!5)))))

(check-sat)
(exit)
