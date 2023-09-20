(declare-fun limit_ack!1243 () (_ BitVec 64))
(declare-fun a_ack!1244 () (_ BitVec 64))
(declare-fun b_ack!1240 () (_ BitVec 64))
(declare-fun epsabs_ack!1242 () (_ BitVec 64))
(declare-fun c_ack!1241 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1243)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1240) ((_ to_fp 11 53) a_ack!1244))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1242)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1241) ((_ to_fp 11 53) a_ack!1244))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1241) ((_ to_fp 11 53) b_ack!1240))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1240)
                       ((_ to_fp 11 53) a_ack!1244))
               ((_ to_fp 11 53) a_ack!1244))
       ((_ to_fp 11 53) b_ack!1240)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1240)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1240)
                       ((_ to_fp 11 53) a_ack!1244)))
       ((_ to_fp 11 53) a_ack!1244)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1241))
                           ((_ to_fp 11 53) b_ack!1240))
                   ((_ to_fp 11 53) a_ack!1244))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1240)
                                   ((_ to_fp 11 53) a_ack!1244))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FINVALID_SQRT b_ack!1240 b_ack!1240))

(check-sat)
(exit)
