(declare-fun x1_ack!3912 () (_ BitVec 64))
(declare-fun x0_ack!3919 () (_ BitVec 64))
(declare-fun x2_ack!3913 () (_ BitVec 64))
(declare-fun b_ack!3918 () (_ BitVec 64))
(declare-fun a_ack!3917 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3914 () (_ BitVec 64))
(declare-fun y1_ack!3915 () (_ BitVec 64))
(declare-fun y2_ack!3916 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3919) ((_ to_fp 11 53) x1_ack!3912)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3912) ((_ to_fp 11 53) x2_ack!3913)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3912)
                       ((_ to_fp 11 53) x0_ack!3919))
               ((_ to_fp 11 53) x0_ack!3919))
       ((_ to_fp 11 53) x1_ack!3912)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3912)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3912)
                       ((_ to_fp 11 53) x0_ack!3919)))
       ((_ to_fp 11 53) x0_ack!3919)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3913)
                       ((_ to_fp 11 53) x1_ack!3912))
               ((_ to_fp 11 53) x1_ack!3912))
       ((_ to_fp 11 53) x2_ack!3913)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3913)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3913)
                       ((_ to_fp 11 53) x1_ack!3912)))
       ((_ to_fp 11 53) x1_ack!3912)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3912)
                    ((_ to_fp 11 53) x0_ack!3919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3913)
                    ((_ to_fp 11 53) x1_ack!3912))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3917) ((_ to_fp 11 53) b_ack!3918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3917) ((_ to_fp 11 53) x0_ack!3919))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3918) ((_ to_fp 11 53) x2_ack!3913))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3917) ((_ to_fp 11 53) b_ack!3918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3917) ((_ to_fp 11 53) x0_ack!3919))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3917) ((_ to_fp 11 53) x1_ack!3912))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3918) ((_ to_fp 11 53) x0_ack!3919))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3918) ((_ to_fp 11 53) x1_ack!3912))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3912)
                    ((_ to_fp 11 53) x0_ack!3919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3916)
                           ((_ to_fp 11 53) y1_ack!3915))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3913)
                                   ((_ to_fp 11 53) x1_ack!3912)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3915)
                           ((_ to_fp 11 53) y0_ack!3914))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3912)
                                   ((_ to_fp 11 53) x0_ack!3919)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3913)
                                   ((_ to_fp 11 53) x1_ack!3912))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3912)
                                   ((_ to_fp 11 53) x0_ack!3919))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3912)
                    ((_ to_fp 11 53) x0_ack!3919))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
