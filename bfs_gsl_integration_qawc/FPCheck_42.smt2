(declare-fun limit_ack!530 () (_ BitVec 64))
(declare-fun a_ack!531 () (_ BitVec 64))
(declare-fun b_ack!527 () (_ BitVec 64))
(declare-fun epsabs_ack!529 () (_ BitVec 64))
(declare-fun c_ack!528 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!530)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!527) ((_ to_fp 11 53) a_ack!531))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!529)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!528) ((_ to_fp 11 53) a_ack!531))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!528) ((_ to_fp 11 53) b_ack!527))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!527)
                       ((_ to_fp 11 53) a_ack!531))
               ((_ to_fp 11 53) a_ack!531))
       ((_ to_fp 11 53) b_ack!527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!527)
                       ((_ to_fp 11 53) a_ack!531)))
       ((_ to_fp 11 53) a_ack!531)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!528))
                           ((_ to_fp 11 53) b_ack!527))
                   ((_ to_fp 11 53) a_ack!531))))
  (FPCHECK_FDIV_INVALID
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!527)
            ((_ to_fp 11 53) a_ack!531)))))

(check-sat)
(exit)
