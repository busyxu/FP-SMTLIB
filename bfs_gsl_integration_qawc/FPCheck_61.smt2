(declare-fun limit_ack!767 () (_ BitVec 64))
(declare-fun a_ack!768 () (_ BitVec 64))
(declare-fun b_ack!764 () (_ BitVec 64))
(declare-fun epsabs_ack!766 () (_ BitVec 64))
(declare-fun c_ack!765 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!767)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!764) ((_ to_fp 11 53) a_ack!768)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!766)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!765) ((_ to_fp 11 53) a_ack!768))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!765) ((_ to_fp 11 53) b_ack!764))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!765))
                   ((_ to_fp 11 53) a_ack!768))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!764))
                 ((_ to_fp 11 53) b_ack!764))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!765))
                   ((_ to_fp 11 53) a_ack!768))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!764)))
         ((_ to_fp 11 53) b_ack!764))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!765))
                           ((_ to_fp 11 53) a_ack!768))
                   ((_ to_fp 11 53) b_ack!764))))
  (FPCHECK_FDIV_ZERO
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!768)
            ((_ to_fp 11 53) b_ack!764)))))

(check-sat)
(exit)
