(declare-fun limit_ack!1976 () (_ BitVec 64))
(declare-fun a_ack!1977 () (_ BitVec 64))
(declare-fun b_ack!1973 () (_ BitVec 64))
(declare-fun epsabs_ack!1975 () (_ BitVec 64))
(declare-fun c_ack!1974 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1976)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1973) ((_ to_fp 11 53) a_ack!1977)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1975)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1974) ((_ to_fp 11 53) a_ack!1977))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1974) ((_ to_fp 11 53) b_ack!1973))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1974))
                   ((_ to_fp 11 53) a_ack!1977))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1973))
                 ((_ to_fp 11 53) b_ack!1973))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1974))
                   ((_ to_fp 11 53) a_ack!1977))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1973)))
         ((_ to_fp 11 53) b_ack!1973))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1974))
                           ((_ to_fp 11 53) a_ack!1977))
                   ((_ to_fp 11 53) b_ack!1973))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1977)
                                   ((_ to_fp 11 53) b_ack!1973))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_ACCURACY b_ack!1973 a_ack!1977))

(check-sat)
(exit)
