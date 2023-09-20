(declare-fun limit_ack!956 () (_ BitVec 64))
(declare-fun a_ack!957 () (_ BitVec 64))
(declare-fun b_ack!952 () (_ BitVec 64))
(declare-fun epsabs_ack!954 () (_ BitVec 64))
(declare-fun epsrel_ack!955 () (_ BitVec 64))
(declare-fun c_ack!953 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!956)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!952) ((_ to_fp 11 53) a_ack!957))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!954) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!955)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!955)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!953) ((_ to_fp 11 53) a_ack!957))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!953) ((_ to_fp 11 53) b_ack!952))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!953))
                   ((_ to_fp 11 53) b_ack!952))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!957))
                 ((_ to_fp 11 53) a_ack!957))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!953))
                   ((_ to_fp 11 53) b_ack!952))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!957)))
         ((_ to_fp 11 53) a_ack!957))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!953))
                           ((_ to_fp 11 53) b_ack!952))
                   ((_ to_fp 11 53) a_ack!957))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!952)
                               ((_ to_fp 11 53) a_ack!957))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!953))
                           ((_ to_fp 11 53) b_ack!952))
                   ((_ to_fp 11 53) a_ack!957))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!952)
                                   ((_ to_fp 11 53) a_ack!957))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!957))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!957)))
                   ((_ to_fp 11 53) #x1f76a09e667f3bcd))))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!1)))

(check-sat)
(exit)
