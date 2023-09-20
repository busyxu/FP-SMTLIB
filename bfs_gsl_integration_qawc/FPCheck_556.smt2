(declare-fun limit_ack!7478 () (_ BitVec 64))
(declare-fun a_ack!7479 () (_ BitVec 64))
(declare-fun b_ack!7474 () (_ BitVec 64))
(declare-fun epsabs_ack!7476 () (_ BitVec 64))
(declare-fun epsrel_ack!7477 () (_ BitVec 64))
(declare-fun c_ack!7475 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!7478)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7474) ((_ to_fp 11 53) a_ack!7479)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7476) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7477)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7477)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7475) ((_ to_fp 11 53) a_ack!7479))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7475) ((_ to_fp 11 53) b_ack!7474))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7475))
                   ((_ to_fp 11 53) a_ack!7479))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7474))
                 ((_ to_fp 11 53) b_ack!7474))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7475))
                   ((_ to_fp 11 53) a_ack!7479))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7474)))
         ((_ to_fp 11 53) b_ack!7474))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!7475))
                           ((_ to_fp 11 53) a_ack!7479))
                   ((_ to_fp 11 53) b_ack!7474))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7479)
                                   ((_ to_fp 11 53) b_ack!7474))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7474)
                           ((_ to_fp 11 53) a_ack!7479))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7479)
                                   ((_ to_fp 11 53) b_ack!7474)))
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
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!7475)))
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!7475))))))
  (FPCHECK_FMUL_OVERFLOW #x3fc85d6861c80eb1 a!5)))))

(check-sat)
(exit)
