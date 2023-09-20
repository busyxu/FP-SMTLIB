(declare-fun limit_ack!737 () (_ BitVec 64))
(declare-fun a_ack!738 () (_ BitVec 64))
(declare-fun b_ack!734 () (_ BitVec 64))
(declare-fun epsabs_ack!736 () (_ BitVec 64))
(declare-fun c_ack!735 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!737)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!734) ((_ to_fp 11 53) a_ack!738)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!736)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) a_ack!738))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!735) ((_ to_fp 11 53) b_ack!734))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!735))
                   ((_ to_fp 11 53) a_ack!738))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!734))
                 ((_ to_fp 11 53) b_ack!734))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!735))
                   ((_ to_fp 11 53) a_ack!738))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!734)))
         ((_ to_fp 11 53) b_ack!734))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!735))
                           ((_ to_fp 11 53) a_ack!738))
                   ((_ to_fp 11 53) b_ack!734))))
  (FPCHECK_FDIV_UNDERFLOW
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!738)
            ((_ to_fp 11 53) b_ack!734)))))

(check-sat)
(exit)
