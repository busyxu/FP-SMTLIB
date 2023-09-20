(declare-fun limit_ack!7724 () (_ BitVec 64))
(declare-fun a_ack!7725 () (_ BitVec 64))
(declare-fun b_ack!7720 () (_ BitVec 64))
(declare-fun epsabs_ack!7722 () (_ BitVec 64))
(declare-fun epsrel_ack!7723 () (_ BitVec 64))
(declare-fun c_ack!7721 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!7724)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7720) ((_ to_fp 11 53) a_ack!7725)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!7722) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7723)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!7723)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7721) ((_ to_fp 11 53) a_ack!7725))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!7721) ((_ to_fp 11 53) b_ack!7720))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7721))
                   ((_ to_fp 11 53) a_ack!7725))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7720))
                 ((_ to_fp 11 53) b_ack!7720))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!7721))
                   ((_ to_fp 11 53) a_ack!7725))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!7720)))
         ((_ to_fp 11 53) b_ack!7720))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!7721))
                           ((_ to_fp 11 53) a_ack!7725))
                   ((_ to_fp 11 53) b_ack!7720))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7725)
                                   ((_ to_fp 11 53) b_ack!7720))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7725)
                                   ((_ to_fp 11 53) b_ack!7720)))
                   ((_ to_fp 11 53) #x3fefba009d4d09b1))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7720)
                    ((_ to_fp 11 53) a_ack!7725)))
    a!1)))

(check-sat)
(exit)
