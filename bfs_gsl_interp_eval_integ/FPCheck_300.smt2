(declare-fun x1_ack!3694 () (_ BitVec 64))
(declare-fun x0_ack!3701 () (_ BitVec 64))
(declare-fun x2_ack!3695 () (_ BitVec 64))
(declare-fun b_ack!3700 () (_ BitVec 64))
(declare-fun a_ack!3699 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3696 () (_ BitVec 64))
(declare-fun y1_ack!3697 () (_ BitVec 64))
(declare-fun y2_ack!3698 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3701) ((_ to_fp 11 53) x1_ack!3694)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3694) ((_ to_fp 11 53) x2_ack!3695)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3694)
                       ((_ to_fp 11 53) x0_ack!3701))
               ((_ to_fp 11 53) x0_ack!3701))
       ((_ to_fp 11 53) x1_ack!3694)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3694)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3694)
                       ((_ to_fp 11 53) x0_ack!3701)))
       ((_ to_fp 11 53) x0_ack!3701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3695)
                       ((_ to_fp 11 53) x1_ack!3694))
               ((_ to_fp 11 53) x1_ack!3694))
       ((_ to_fp 11 53) x2_ack!3695)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3695)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3695)
                       ((_ to_fp 11 53) x1_ack!3694)))
       ((_ to_fp 11 53) x1_ack!3694)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3694)
                    ((_ to_fp 11 53) x0_ack!3701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3695)
                    ((_ to_fp 11 53) x1_ack!3694))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3699) ((_ to_fp 11 53) b_ack!3700))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3699) ((_ to_fp 11 53) x0_ack!3701))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3700) ((_ to_fp 11 53) x2_ack!3695))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3699) ((_ to_fp 11 53) b_ack!3700))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3699) ((_ to_fp 11 53) x0_ack!3701))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3699) ((_ to_fp 11 53) x1_ack!3694)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3694) ((_ to_fp 11 53) a_ack!3699))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3700) ((_ to_fp 11 53) x1_ack!3694))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3700) ((_ to_fp 11 53) x2_ack!3695)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3695)
                    ((_ to_fp 11 53) x1_ack!3694))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3698)
                           ((_ to_fp 11 53) y1_ack!3697))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3695)
                                   ((_ to_fp 11 53) x1_ack!3694)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3697)
                           ((_ to_fp 11 53) y0_ack!3696))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3694)
                                   ((_ to_fp 11 53) x0_ack!3701)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3695)
                                   ((_ to_fp 11 53) x1_ack!3694))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3694)
                                   ((_ to_fp 11 53) x0_ack!3701))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3695)
                    ((_ to_fp 11 53) x1_ack!3694)))))))

(check-sat)
(exit)
