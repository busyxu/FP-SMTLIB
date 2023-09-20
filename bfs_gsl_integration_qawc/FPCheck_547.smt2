(declare-fun limit_ack!7370 () (_ BitVec 64))
(declare-fun a_ack!7371 () (_ BitVec 64))
(declare-fun b_ack!7366 () (_ BitVec 64))
(declare-fun epsabs_ack!7368 () (_ BitVec 64))
(declare-fun epsrel_ack!7369 () (_ BitVec 64))
(declare-fun c_ack!7367 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!7370)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7366) ((_ to_fp 11 53) a_ack!7371)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7368) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7369)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7369)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7367) ((_ to_fp 11 53) a_ack!7371))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7367) ((_ to_fp 11 53) b_ack!7366))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7367))
                   ((_ to_fp 11 53) a_ack!7371))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7366))
                 ((_ to_fp 11 53) b_ack!7366))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7367))
                   ((_ to_fp 11 53) a_ack!7371))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7366)))
         ((_ to_fp 11 53) b_ack!7366))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!7367))
                           ((_ to_fp 11 53) a_ack!7371))
                   ((_ to_fp 11 53) b_ack!7366))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7371)
                                   ((_ to_fp 11 53) b_ack!7366))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7366)
                           ((_ to_fp 11 53) a_ack!7371))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7371)
                                   ((_ to_fp 11 53) b_ack!7366)))
                   ((_ to_fp 11 53) #x3fd9f95df119fd62))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f917108b2e0c315)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f9ad43642baaa6a))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            a!3
            (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!7367)))
    (fp.div roundNearestTiesToEven
            a!4
            (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!7367)))))))

(check-sat)
(exit)
