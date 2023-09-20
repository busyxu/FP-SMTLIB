(declare-fun limit_ack!787 () (_ BitVec 64))
(declare-fun a_ack!788 () (_ BitVec 64))
(declare-fun b_ack!784 () (_ BitVec 64))
(declare-fun epsabs_ack!786 () (_ BitVec 64))
(declare-fun c_ack!785 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!787)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!784) ((_ to_fp 11 53) a_ack!788)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!786)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!785) ((_ to_fp 11 53) a_ack!788))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!785) ((_ to_fp 11 53) b_ack!784))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!785))
                   ((_ to_fp 11 53) a_ack!788))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!784))
                 ((_ to_fp 11 53) b_ack!784))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!785))
                   ((_ to_fp 11 53) a_ack!788))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!784)))
         ((_ to_fp 11 53) b_ack!784))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!785))
                           ((_ to_fp 11 53) a_ack!788))
                   ((_ to_fp 11 53) b_ack!784))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!788)
                                   ((_ to_fp 11 53) b_ack!784))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!788 b_ack!784))

(check-sat)
(exit)
