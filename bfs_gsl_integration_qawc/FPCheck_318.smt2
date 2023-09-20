(declare-fun limit_ack!3996 () (_ BitVec 64))
(declare-fun a_ack!3997 () (_ BitVec 64))
(declare-fun b_ack!3993 () (_ BitVec 64))
(declare-fun epsabs_ack!3995 () (_ BitVec 64))
(declare-fun c_ack!3994 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3996)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3993) ((_ to_fp 11 53) a_ack!3997)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3995)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3994) ((_ to_fp 11 53) a_ack!3997))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3994) ((_ to_fp 11 53) b_ack!3993))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3994))
                   ((_ to_fp 11 53) a_ack!3997))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3993))
                 ((_ to_fp 11 53) b_ack!3993))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3994))
                   ((_ to_fp 11 53) a_ack!3997))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3993)))
         ((_ to_fp 11 53) b_ack!3993))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3994))
                           ((_ to_fp 11 53) a_ack!3997))
                   ((_ to_fp 11 53) b_ack!3993))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3997)
                                   ((_ to_fp 11 53) b_ack!3993))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3997)
                                   ((_ to_fp 11 53) b_ack!3993)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3993)
                    ((_ to_fp 11 53) a_ack!3997)))
    a!1)))

(check-sat)
(exit)
