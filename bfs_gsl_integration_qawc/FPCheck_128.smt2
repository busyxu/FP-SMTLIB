(declare-fun limit_ack!1666 () (_ BitVec 64))
(declare-fun a_ack!1667 () (_ BitVec 64))
(declare-fun b_ack!1663 () (_ BitVec 64))
(declare-fun epsabs_ack!1665 () (_ BitVec 64))
(declare-fun c_ack!1664 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1666)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1663) ((_ to_fp 11 53) a_ack!1667)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1665)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1664) ((_ to_fp 11 53) a_ack!1667))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1664) ((_ to_fp 11 53) b_ack!1663))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1664))
                   ((_ to_fp 11 53) a_ack!1667))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1663))
                 ((_ to_fp 11 53) b_ack!1663))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1664))
                   ((_ to_fp 11 53) a_ack!1667))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1663)))
         ((_ to_fp 11 53) b_ack!1663))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1664))
                           ((_ to_fp 11 53) a_ack!1667))
                   ((_ to_fp 11 53) b_ack!1663))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1667)
                                   ((_ to_fp 11 53) b_ack!1663))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a_ack!1667))

(check-sat)
(exit)
