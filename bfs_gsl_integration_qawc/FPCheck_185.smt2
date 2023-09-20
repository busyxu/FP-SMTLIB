(declare-fun limit_ack!2406 () (_ BitVec 64))
(declare-fun a_ack!2407 () (_ BitVec 64))
(declare-fun b_ack!2403 () (_ BitVec 64))
(declare-fun epsabs_ack!2405 () (_ BitVec 64))
(declare-fun c_ack!2404 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2406)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2403) ((_ to_fp 11 53) a_ack!2407)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2405)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2404) ((_ to_fp 11 53) a_ack!2407))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2404) ((_ to_fp 11 53) b_ack!2403))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2404))
                   ((_ to_fp 11 53) a_ack!2407))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2403))
                 ((_ to_fp 11 53) b_ack!2403))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2404))
                   ((_ to_fp 11 53) a_ack!2407))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2403)))
         ((_ to_fp 11 53) b_ack!2403))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2404))
                           ((_ to_fp 11 53) a_ack!2407))
                   ((_ to_fp 11 53) b_ack!2403))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2407)
                                   ((_ to_fp 11 53) b_ack!2403))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2407)
                  ((_ to_fp 11 53) b_ack!2403)))
  #x3fee5f178e7c6229))

(check-sat)
(exit)
