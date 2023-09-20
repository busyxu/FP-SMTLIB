(declare-fun limit_ack!1601 () (_ BitVec 64))
(declare-fun a_ack!1602 () (_ BitVec 64))
(declare-fun b_ack!1598 () (_ BitVec 64))
(declare-fun epsabs_ack!1600 () (_ BitVec 64))
(declare-fun c_ack!1599 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1601)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1598) ((_ to_fp 11 53) a_ack!1602)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1600)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1599) ((_ to_fp 11 53) a_ack!1602))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1599) ((_ to_fp 11 53) b_ack!1598))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1599))
                   ((_ to_fp 11 53) a_ack!1602))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1598))
                 ((_ to_fp 11 53) b_ack!1598))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1599))
                   ((_ to_fp 11 53) a_ack!1602))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1598)))
         ((_ to_fp 11 53) b_ack!1598))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1599))
                           ((_ to_fp 11 53) a_ack!1602))
                   ((_ to_fp 11 53) b_ack!1598))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1602)
                                   ((_ to_fp 11 53) b_ack!1598))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!1602 b_ack!1598))

(check-sat)
(exit)
