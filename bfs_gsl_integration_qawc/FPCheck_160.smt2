(declare-fun limit_ack!2086 () (_ BitVec 64))
(declare-fun a_ack!2087 () (_ BitVec 64))
(declare-fun b_ack!2083 () (_ BitVec 64))
(declare-fun epsabs_ack!2085 () (_ BitVec 64))
(declare-fun c_ack!2084 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2086)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2083) ((_ to_fp 11 53) a_ack!2087)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2085)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2084) ((_ to_fp 11 53) a_ack!2087))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2084) ((_ to_fp 11 53) b_ack!2083))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2084))
                   ((_ to_fp 11 53) a_ack!2087))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2083))
                 ((_ to_fp 11 53) b_ack!2083))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2084))
                   ((_ to_fp 11 53) a_ack!2087))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2083)))
         ((_ to_fp 11 53) b_ack!2083))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2084))
                           ((_ to_fp 11 53) a_ack!2087))
                   ((_ to_fp 11 53) b_ack!2083))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2087)
                                   ((_ to_fp 11 53) b_ack!2083))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2087)
          ((_ to_fp 11 53) b_ack!2083))))

(check-sat)
(exit)
