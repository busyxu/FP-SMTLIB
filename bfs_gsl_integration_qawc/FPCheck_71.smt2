(declare-fun limit_ack!903 () (_ BitVec 64))
(declare-fun a_ack!904 () (_ BitVec 64))
(declare-fun b_ack!899 () (_ BitVec 64))
(declare-fun epsabs_ack!901 () (_ BitVec 64))
(declare-fun epsrel_ack!902 () (_ BitVec 64))
(declare-fun c_ack!900 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!903)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!899) ((_ to_fp 11 53) a_ack!904)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!901) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!902)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!902)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!900) ((_ to_fp 11 53) a_ack!904))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!900) ((_ to_fp 11 53) b_ack!899))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!900))
                   ((_ to_fp 11 53) a_ack!904))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!899))
                 ((_ to_fp 11 53) b_ack!899))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!900))
                   ((_ to_fp 11 53) a_ack!904))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!899)))
         ((_ to_fp 11 53) b_ack!899))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!900))
                           ((_ to_fp 11 53) a_ack!904))
                   ((_ to_fp 11 53) b_ack!899))))
  (FPCHECK_FDIV_INVALID
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!904)
            ((_ to_fp 11 53) b_ack!899)))))

(check-sat)
(exit)
