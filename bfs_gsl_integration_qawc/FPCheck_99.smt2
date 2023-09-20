(declare-fun limit_ack!1268 () (_ BitVec 64))
(declare-fun a_ack!1269 () (_ BitVec 64))
(declare-fun b_ack!1265 () (_ BitVec 64))
(declare-fun epsabs_ack!1267 () (_ BitVec 64))
(declare-fun c_ack!1266 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1268)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1265) ((_ to_fp 11 53) a_ack!1269))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1267)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1266) ((_ to_fp 11 53) a_ack!1269))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1266) ((_ to_fp 11 53) b_ack!1265))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1265)
                       ((_ to_fp 11 53) a_ack!1269))
               ((_ to_fp 11 53) a_ack!1269))
       ((_ to_fp 11 53) b_ack!1265)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1265)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1265)
                       ((_ to_fp 11 53) a_ack!1269)))
       ((_ to_fp 11 53) a_ack!1269)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1266))
                           ((_ to_fp 11 53) b_ack!1265))
                   ((_ to_fp 11 53) a_ack!1269))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1265)
                                   ((_ to_fp 11 53) a_ack!1269))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!1265)))
  #x1ed51241356cf6e0))

(check-sat)
(exit)
