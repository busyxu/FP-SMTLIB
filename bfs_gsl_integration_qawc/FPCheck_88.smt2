(declare-fun limit_ack!1118 () (_ BitVec 64))
(declare-fun a_ack!1119 () (_ BitVec 64))
(declare-fun b_ack!1115 () (_ BitVec 64))
(declare-fun epsabs_ack!1117 () (_ BitVec 64))
(declare-fun c_ack!1116 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1118)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1115) ((_ to_fp 11 53) a_ack!1119))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1117)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) a_ack!1119))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) b_ack!1115))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1115)
                       ((_ to_fp 11 53) a_ack!1119))
               ((_ to_fp 11 53) a_ack!1119))
       ((_ to_fp 11 53) b_ack!1115)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1115)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1115)
                       ((_ to_fp 11 53) a_ack!1119)))
       ((_ to_fp 11 53) a_ack!1119)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1116))
                           ((_ to_fp 11 53) b_ack!1115))
                   ((_ to_fp 11 53) a_ack!1119))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1115)
                                   ((_ to_fp 11 53) a_ack!1119))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!1115 a_ack!1119))

(check-sat)
(exit)
