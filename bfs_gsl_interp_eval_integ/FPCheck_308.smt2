(declare-fun x1_ack!3814 () (_ BitVec 64))
(declare-fun x0_ack!3821 () (_ BitVec 64))
(declare-fun x2_ack!3815 () (_ BitVec 64))
(declare-fun b_ack!3820 () (_ BitVec 64))
(declare-fun a_ack!3819 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3816 () (_ BitVec 64))
(declare-fun y1_ack!3817 () (_ BitVec 64))
(declare-fun y2_ack!3818 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3821) ((_ to_fp 11 53) x1_ack!3814)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3814) ((_ to_fp 11 53) x2_ack!3815)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3814)
                       ((_ to_fp 11 53) x0_ack!3821))
               ((_ to_fp 11 53) x0_ack!3821))
       ((_ to_fp 11 53) x1_ack!3814)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3814)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3814)
                       ((_ to_fp 11 53) x0_ack!3821)))
       ((_ to_fp 11 53) x0_ack!3821)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3815)
                       ((_ to_fp 11 53) x1_ack!3814))
               ((_ to_fp 11 53) x1_ack!3814))
       ((_ to_fp 11 53) x2_ack!3815)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3815)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3815)
                       ((_ to_fp 11 53) x1_ack!3814)))
       ((_ to_fp 11 53) x1_ack!3814)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3814)
                    ((_ to_fp 11 53) x0_ack!3821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3815)
                    ((_ to_fp 11 53) x1_ack!3814))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3819) ((_ to_fp 11 53) b_ack!3820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3819) ((_ to_fp 11 53) x0_ack!3821))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3820) ((_ to_fp 11 53) x2_ack!3815))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3819) ((_ to_fp 11 53) b_ack!3820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3819) ((_ to_fp 11 53) x0_ack!3821))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3819) ((_ to_fp 11 53) x1_ack!3814))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3820) ((_ to_fp 11 53) x0_ack!3821))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3820) ((_ to_fp 11 53) x1_ack!3814))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3814)
                    ((_ to_fp 11 53) x0_ack!3821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3818)
                           ((_ to_fp 11 53) y1_ack!3817))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3815)
                                   ((_ to_fp 11 53) x1_ack!3814)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3817)
                           ((_ to_fp 11 53) y0_ack!3816))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3814)
                                   ((_ to_fp 11 53) x0_ack!3821)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3815)
                                   ((_ to_fp 11 53) x1_ack!3814))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3814)
                                   ((_ to_fp 11 53) x0_ack!3821))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
