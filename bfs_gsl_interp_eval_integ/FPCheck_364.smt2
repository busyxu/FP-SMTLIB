(declare-fun x1_ack!4529 () (_ BitVec 64))
(declare-fun x0_ack!4536 () (_ BitVec 64))
(declare-fun x2_ack!4530 () (_ BitVec 64))
(declare-fun b_ack!4535 () (_ BitVec 64))
(declare-fun a_ack!4534 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4531 () (_ BitVec 64))
(declare-fun y1_ack!4532 () (_ BitVec 64))
(declare-fun y2_ack!4533 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4536) ((_ to_fp 11 53) x1_ack!4529)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4529) ((_ to_fp 11 53) x2_ack!4530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4529)
                       ((_ to_fp 11 53) x0_ack!4536))
               ((_ to_fp 11 53) x0_ack!4536))
       ((_ to_fp 11 53) x1_ack!4529)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4529)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4529)
                       ((_ to_fp 11 53) x0_ack!4536)))
       ((_ to_fp 11 53) x0_ack!4536)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4530)
                       ((_ to_fp 11 53) x1_ack!4529))
               ((_ to_fp 11 53) x1_ack!4529))
       ((_ to_fp 11 53) x2_ack!4530)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4530)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4530)
                       ((_ to_fp 11 53) x1_ack!4529)))
       ((_ to_fp 11 53) x1_ack!4529)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4529)
                    ((_ to_fp 11 53) x0_ack!4536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4530)
                    ((_ to_fp 11 53) x1_ack!4529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4534) ((_ to_fp 11 53) b_ack!4535))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4534) ((_ to_fp 11 53) x0_ack!4536))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4535) ((_ to_fp 11 53) x2_ack!4530))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4534) ((_ to_fp 11 53) b_ack!4535))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4534) ((_ to_fp 11 53) x0_ack!4536))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4534) ((_ to_fp 11 53) x1_ack!4529))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4535) ((_ to_fp 11 53) x0_ack!4536))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4535) ((_ to_fp 11 53) x1_ack!4529))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4529)
                    ((_ to_fp 11 53) x0_ack!4536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4533)
                           ((_ to_fp 11 53) y1_ack!4532))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4530)
                                   ((_ to_fp 11 53) x1_ack!4529)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4532)
                           ((_ to_fp 11 53) y0_ack!4531))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4529)
                                   ((_ to_fp 11 53) x0_ack!4536)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4530)
                                   ((_ to_fp 11 53) x1_ack!4529))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4529)
                                   ((_ to_fp 11 53) x0_ack!4536))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4529)
                                   ((_ to_fp 11 53) x0_ack!4536))))))
  (FPCHECK_FMUL_UNDERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
