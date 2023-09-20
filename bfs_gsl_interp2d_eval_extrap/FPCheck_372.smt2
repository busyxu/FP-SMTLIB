(declare-fun x1_ack!3959 () (_ BitVec 64))
(declare-fun x0_ack!3963 () (_ BitVec 64))
(declare-fun y0_ack!3960 () (_ BitVec 64))
(declare-fun x_ack!3961 () (_ BitVec 64))
(declare-fun y_ack!3962 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3963) ((_ to_fp 11 53) x1_ack!3959))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3960) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3961) ((_ to_fp 11 53) x0_ack!3963)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3962) ((_ to_fp 11 53) y0_ack!3960))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3962) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3959)
                       ((_ to_fp 11 53) x0_ack!3963))
               ((_ to_fp 11 53) x0_ack!3963))
       ((_ to_fp 11 53) x1_ack!3959)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3959)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3959)
                       ((_ to_fp 11 53) x0_ack!3963)))
       ((_ to_fp 11 53) x0_ack!3963)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3961)
                           ((_ to_fp 11 53) x0_ack!3963))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3959)
                           ((_ to_fp 11 53) x0_ack!3963)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3961)
                           ((_ to_fp 11 53) x0_ack!3963))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3959)
                           ((_ to_fp 11 53) x0_ack!3963)))))
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
                                   ((_ to_fp 11 53) x_ack!3961)
                                   ((_ to_fp 11 53) x0_ack!3963))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3959)
                                   ((_ to_fp 11 53) x0_ack!3963))))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!3962)
                    ((_ to_fp 11 53) y0_ack!3960))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!3960))))))

(check-sat)
(exit)
