(declare-fun x1_ack!3991 () (_ BitVec 64))
(declare-fun x0_ack!3996 () (_ BitVec 64))
(declare-fun y0_ack!3992 () (_ BitVec 64))
(declare-fun x_ack!3994 () (_ BitVec 64))
(declare-fun y_ack!3995 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!3993 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3996) ((_ to_fp 11 53) x1_ack!3991))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3992) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3994) ((_ to_fp 11 53) x0_ack!3996)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3995) ((_ to_fp 11 53) y0_ack!3992))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3995) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3991)
                       ((_ to_fp 11 53) x0_ack!3996))
               ((_ to_fp 11 53) x0_ack!3996))
       ((_ to_fp 11 53) x1_ack!3991)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3991)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3991)
                       ((_ to_fp 11 53) x0_ack!3996)))
       ((_ to_fp 11 53) x0_ack!3996)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3994)
                           ((_ to_fp 11 53) x0_ack!3996))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3991)
                           ((_ to_fp 11 53) x0_ack!3996)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3994)
                           ((_ to_fp 11 53) x0_ack!3996))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3991)
                           ((_ to_fp 11 53) x0_ack!3996)))))
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
                                   ((_ to_fp 11 53) x_ack!3994)
                                   ((_ to_fp 11 53) x0_ack!3996))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3991)
                                   ((_ to_fp 11 53) x0_ack!3996))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3995)
                                   ((_ to_fp 11 53) y0_ack!3992))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3992))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 z1_ack!3993))))

(check-sat)
(exit)
