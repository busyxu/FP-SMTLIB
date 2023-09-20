(declare-fun x1_ack!3736 () (_ BitVec 64))
(declare-fun x0_ack!3741 () (_ BitVec 64))
(declare-fun y0_ack!3737 () (_ BitVec 64))
(declare-fun x_ack!3739 () (_ BitVec 64))
(declare-fun y_ack!3740 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!3738 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3741) ((_ to_fp 11 53) x1_ack!3736))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3737) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3739) ((_ to_fp 11 53) x0_ack!3741)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3740) ((_ to_fp 11 53) y0_ack!3737))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3740) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3736)
                       ((_ to_fp 11 53) x0_ack!3741))
               ((_ to_fp 11 53) x0_ack!3741))
       ((_ to_fp 11 53) x1_ack!3736)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3736)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3736)
                       ((_ to_fp 11 53) x0_ack!3741)))
       ((_ to_fp 11 53) x0_ack!3741)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3739)
                           ((_ to_fp 11 53) x0_ack!3741))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3736)
                           ((_ to_fp 11 53) x0_ack!3741)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3739)
                           ((_ to_fp 11 53) x0_ack!3741))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3736)
                           ((_ to_fp 11 53) x0_ack!3741)))))
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
                                   ((_ to_fp 11 53) x_ack!3739)
                                   ((_ to_fp 11 53) x0_ack!3741))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3736)
                                   ((_ to_fp 11 53) x0_ack!3741)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3740)
                                   ((_ to_fp 11 53) y0_ack!3737))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3737))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3738)))

(check-sat)
(exit)
