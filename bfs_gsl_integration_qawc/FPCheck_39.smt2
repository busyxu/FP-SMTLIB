(declare-fun limit_ack!510 () (_ BitVec 64))
(declare-fun a_ack!511 () (_ BitVec 64))
(declare-fun b_ack!507 () (_ BitVec 64))
(declare-fun epsabs_ack!509 () (_ BitVec 64))
(declare-fun c_ack!508 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!510)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!507) ((_ to_fp 11 53) a_ack!511))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!509)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) a_ack!511))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!508) ((_ to_fp 11 53) b_ack!507))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!507)
                       ((_ to_fp 11 53) a_ack!511))
               ((_ to_fp 11 53) a_ack!511))
       ((_ to_fp 11 53) b_ack!507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!507)
                       ((_ to_fp 11 53) a_ack!511)))
       ((_ to_fp 11 53) a_ack!511)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!508))
                           ((_ to_fp 11 53) b_ack!507))
                   ((_ to_fp 11 53) a_ack!511))))
  (FPCHECK_FDIV_OVERFLOW
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!507)
            ((_ to_fp 11 53) a_ack!511)))))

(check-sat)
(exit)
