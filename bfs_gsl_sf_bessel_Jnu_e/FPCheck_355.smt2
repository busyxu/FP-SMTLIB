(declare-fun b_ack!1081 () (_ BitVec 64))
(declare-fun a_ack!1082 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1082) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1081))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1081)
                       ((_ to_fp 11 53) b_ack!1081))
               ((_ to_fp 11 53) b_ack!1081))
       ((_ to_fp 11 53) b_ack!1081)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1081))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1081)
                       ((_ to_fp 11 53) b_ack!1081))
               ((_ to_fp 11 53) b_ack!1081))
       ((_ to_fp 11 53) b_ack!1081)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!1081)
                          ((_ to_fp 11 53) b_ack!1081))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1082)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1082) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1081) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1082) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_POW a_ack!1082 a_ack!1082))

(check-sat)
(exit)
