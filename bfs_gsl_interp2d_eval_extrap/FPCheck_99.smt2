(declare-fun x1_ack!1052 () (_ BitVec 64))
(declare-fun x0_ack!1056 () (_ BitVec 64))
(declare-fun y0_ack!1053 () (_ BitVec 64))
(declare-fun x_ack!1054 () (_ BitVec 64))
(declare-fun y_ack!1055 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1056) ((_ to_fp 11 53) x1_ack!1052))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1053) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1054) ((_ to_fp 11 53) x0_ack!1056))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1054) ((_ to_fp 11 53) x1_ack!1052)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1055) ((_ to_fp 11 53) y0_ack!1053))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1055) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1052)
                       ((_ to_fp 11 53) x0_ack!1056))
               ((_ to_fp 11 53) x0_ack!1056))
       ((_ to_fp 11 53) x1_ack!1052)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1052)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1052)
                       ((_ to_fp 11 53) x0_ack!1056)))
       ((_ to_fp 11 53) x0_ack!1056)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 y0_ack!1053))

(check-sat)
(exit)
