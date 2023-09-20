(declare-fun limit_ack!788 () (_ BitVec 64))
(declare-fun a_ack!789 () (_ BitVec 64))
(declare-fun b_ack!784 () (_ BitVec 64))
(declare-fun epsabs_ack!786 () (_ BitVec 64))
(declare-fun epsrel_ack!787 () (_ BitVec 64))
(declare-fun c_ack!785 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!788)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!784) ((_ to_fp 11 53) a_ack!789))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!786) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!787)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!787)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!785) ((_ to_fp 11 53) a_ack!789))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!785) ((_ to_fp 11 53) b_ack!784))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!785))
                   ((_ to_fp 11 53) b_ack!784))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!789))
                 ((_ to_fp 11 53) a_ack!789))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!785))
                   ((_ to_fp 11 53) b_ack!784))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!789)))
         ((_ to_fp 11 53) a_ack!789))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!785))
                           ((_ to_fp 11 53) b_ack!784))
                   ((_ to_fp 11 53) a_ack!789))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!784)
                               ((_ to_fp 11 53) a_ack!789))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!785))
                           ((_ to_fp 11 53) b_ack!784))
                   ((_ to_fp 11 53) a_ack!789))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!784)
                                   ((_ to_fp 11 53) a_ack!789))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!784)
                                   ((_ to_fp 11 53) a_ack!789))))))
  (FPCHECK_FDIV_ACCURACY (CF_log a!1) #x1fc3a59a1adbbc1d)))

(check-sat)
(exit)
