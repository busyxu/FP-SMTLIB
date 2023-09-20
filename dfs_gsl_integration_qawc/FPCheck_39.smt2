(declare-fun limit_ack!632 () (_ BitVec 64))
(declare-fun a_ack!633 () (_ BitVec 64))
(declare-fun b_ack!628 () (_ BitVec 64))
(declare-fun epsabs_ack!630 () (_ BitVec 64))
(declare-fun epsrel_ack!631 () (_ BitVec 64))
(declare-fun c_ack!629 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!632)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!628) ((_ to_fp 11 53) a_ack!633))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!630) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!631)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!631)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!629) ((_ to_fp 11 53) a_ack!633))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!629) ((_ to_fp 11 53) b_ack!628))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!629))
                   ((_ to_fp 11 53) b_ack!628))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!633))
                 ((_ to_fp 11 53) a_ack!633))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!629))
                   ((_ to_fp 11 53) b_ack!628))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!633)))
         ((_ to_fp 11 53) a_ack!633))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!629))
                           ((_ to_fp 11 53) b_ack!628))
                   ((_ to_fp 11 53) a_ack!633))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!628)
                               ((_ to_fp 11 53) a_ack!633))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!629))
                           ((_ to_fp 11 53) b_ack!628))
                   ((_ to_fp 11 53) a_ack!633))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!628)
                                   ((_ to_fp 11 53) a_ack!633))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!628)))
                   ((_ to_fp 11 53) #x1fcbc8ee6b28738b))))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
