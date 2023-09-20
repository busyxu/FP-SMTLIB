(declare-fun x1_ack!3692 () (_ BitVec 64))
(declare-fun x0_ack!3696 () (_ BitVec 64))
(declare-fun y0_ack!3693 () (_ BitVec 64))
(declare-fun x_ack!3694 () (_ BitVec 64))
(declare-fun y_ack!3695 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3696) ((_ to_fp 11 53) x1_ack!3692))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3693) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3694) ((_ to_fp 11 53) x0_ack!3696)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3695) ((_ to_fp 11 53) y0_ack!3693))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3695) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3692)
                       ((_ to_fp 11 53) x0_ack!3696))
               ((_ to_fp 11 53) x0_ack!3696))
       ((_ to_fp 11 53) x1_ack!3692)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3692)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3692)
                       ((_ to_fp 11 53) x0_ack!3696)))
       ((_ to_fp 11 53) x0_ack!3696)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3694)
                           ((_ to_fp 11 53) x0_ack!3696))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3692)
                           ((_ to_fp 11 53) x0_ack!3696)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3694)
                           ((_ to_fp 11 53) x0_ack!3696))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3692)
                           ((_ to_fp 11 53) x0_ack!3696)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3694)
                                   ((_ to_fp 11 53) x0_ack!3696))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3692)
                                   ((_ to_fp 11 53) x0_ack!3696)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3695)
                                   ((_ to_fp 11 53) y0_ack!3693))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3693))))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
