(declare-fun limit_ack!1751 () (_ BitVec 64))
(declare-fun a_ack!1752 () (_ BitVec 64))
(declare-fun b_ack!1748 () (_ BitVec 64))
(declare-fun epsabs_ack!1750 () (_ BitVec 64))
(declare-fun c_ack!1749 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1751)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1748) ((_ to_fp 11 53) a_ack!1752)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1750)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1749) ((_ to_fp 11 53) a_ack!1752))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1749) ((_ to_fp 11 53) b_ack!1748))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1749))
                   ((_ to_fp 11 53) a_ack!1752))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1748))
                 ((_ to_fp 11 53) b_ack!1748))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1749))
                   ((_ to_fp 11 53) a_ack!1752))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1748)))
         ((_ to_fp 11 53) b_ack!1748))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1749))
                           ((_ to_fp 11 53) a_ack!1752))
                   ((_ to_fp 11 53) b_ack!1748))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1752)
                                   ((_ to_fp 11 53) b_ack!1748))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FDIV_ACCURACY
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!1752)))
  #x2476a09e667f3bcd))

(check-sat)
(exit)
