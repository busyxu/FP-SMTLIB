(declare-fun x1_ack!4641 () (_ BitVec 64))
(declare-fun x0_ack!4647 () (_ BitVec 64))
(declare-fun y0_ack!4642 () (_ BitVec 64))
(declare-fun x_ack!4645 () (_ BitVec 64))
(declare-fun y_ack!4646 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!4644 () (_ BitVec 64))
(declare-fun z0_ack!4643 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4647) ((_ to_fp 11 53) x1_ack!4641))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4642) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4645) ((_ to_fp 11 53) x0_ack!4647))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4645) ((_ to_fp 11 53) x1_ack!4641))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4646) ((_ to_fp 11 53) y0_ack!4642)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4641)
                       ((_ to_fp 11 53) x0_ack!4647))
               ((_ to_fp 11 53) x0_ack!4647))
       ((_ to_fp 11 53) x1_ack!4641)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4641)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4641)
                       ((_ to_fp 11 53) x0_ack!4647)))
       ((_ to_fp 11 53) x0_ack!4647)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4642))
               ((_ to_fp 11 53) y0_ack!4642))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4642)))
       ((_ to_fp 11 53) y0_ack!4642)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4646)
                           ((_ to_fp 11 53) y0_ack!4642))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4642)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4646)
                           ((_ to_fp 11 53) y0_ack!4642))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4642)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4645)
                           ((_ to_fp 11 53) x0_ack!4647))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4641)
                           ((_ to_fp 11 53) x0_ack!4647))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4646)
                                   ((_ to_fp 11 53) y0_ack!4642))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4642))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!4643))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!4644))))))

(check-sat)
(exit)
