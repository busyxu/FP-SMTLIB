(declare-fun limit_ack!8312 () (_ BitVec 64))
(declare-fun a_ack!8313 () (_ BitVec 64))
(declare-fun b_ack!8308 () (_ BitVec 64))
(declare-fun epsabs_ack!8310 () (_ BitVec 64))
(declare-fun epsrel_ack!8311 () (_ BitVec 64))
(declare-fun c_ack!8309 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!8312)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!8308) ((_ to_fp 11 53) a_ack!8313)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!8310) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8311)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8311)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8309) ((_ to_fp 11 53) a_ack!8313))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8309) ((_ to_fp 11 53) b_ack!8308))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8309))
                   ((_ to_fp 11 53) a_ack!8313))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8308))
                 ((_ to_fp 11 53) b_ack!8308))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8309))
                   ((_ to_fp 11 53) a_ack!8313))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8308)))
         ((_ to_fp 11 53) b_ack!8308))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!8309))
                           ((_ to_fp 11 53) a_ack!8313))
                   ((_ to_fp 11 53) b_ack!8308))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8313)
                                   ((_ to_fp 11 53) b_ack!8308))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!8308)
                           ((_ to_fp 11 53) a_ack!8313))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8313)
                                   ((_ to_fp 11 53) b_ack!8308)))
                   ((_ to_fp 11 53) #x3fefba009d4d09b1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f60bba03a5ba8bd)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f9fee7b5b695762))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.div roundNearestTiesToEven
            a!3
            (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!8309)))
    (fp.div roundNearestTiesToEven
            a!4
            (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!8309)))))))

(check-sat)
(exit)
