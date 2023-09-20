(declare-fun limit_ack!1278 () (_ BitVec 64))
(declare-fun a_ack!1279 () (_ BitVec 64))
(declare-fun b_ack!1275 () (_ BitVec 64))
(declare-fun epsabs_ack!1277 () (_ BitVec 64))
(declare-fun c_ack!1276 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1278)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1275) ((_ to_fp 11 53) a_ack!1279))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1277)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1276) ((_ to_fp 11 53) a_ack!1279))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1276) ((_ to_fp 11 53) b_ack!1275))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1275)
                       ((_ to_fp 11 53) a_ack!1279))
               ((_ to_fp 11 53) a_ack!1279))
       ((_ to_fp 11 53) b_ack!1275)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1275)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1275)
                       ((_ to_fp 11 53) a_ack!1279)))
       ((_ to_fp 11 53) a_ack!1279)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1276))
                           ((_ to_fp 11 53) b_ack!1275))
                   ((_ to_fp 11 53) a_ack!1279))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1275)
                                   ((_ to_fp 11 53) a_ack!1279))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!1275)))
  #x1ed51241356cf6e0))

(check-sat)
(exit)
