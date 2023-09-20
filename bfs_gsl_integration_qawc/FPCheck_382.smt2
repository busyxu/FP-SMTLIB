(declare-fun limit_ack!4940 () (_ BitVec 64))
(declare-fun a_ack!4941 () (_ BitVec 64))
(declare-fun b_ack!4936 () (_ BitVec 64))
(declare-fun epsabs_ack!4938 () (_ BitVec 64))
(declare-fun epsrel_ack!4939 () (_ BitVec 64))
(declare-fun c_ack!4937 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4940)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4936) ((_ to_fp 11 53) a_ack!4941)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4938) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4939)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4939)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4937) ((_ to_fp 11 53) a_ack!4941))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4937) ((_ to_fp 11 53) b_ack!4936))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4937))
                   ((_ to_fp 11 53) a_ack!4941))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4936))
                 ((_ to_fp 11 53) b_ack!4936))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4937))
                   ((_ to_fp 11 53) a_ack!4941))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4936)))
         ((_ to_fp 11 53) b_ack!4936))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4937))
                           ((_ to_fp 11 53) a_ack!4941))
                   ((_ to_fp 11 53) b_ack!4936))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4941)
                                   ((_ to_fp 11 53) b_ack!4936))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4941)
                                   ((_ to_fp 11 53) b_ack!4936)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4936)
                                   ((_ to_fp 11 53) a_ack!4941)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
