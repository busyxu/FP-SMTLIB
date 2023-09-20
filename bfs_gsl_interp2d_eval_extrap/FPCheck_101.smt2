(declare-fun x1_ack!1072 () (_ BitVec 64))
(declare-fun x0_ack!1076 () (_ BitVec 64))
(declare-fun y0_ack!1073 () (_ BitVec 64))
(declare-fun x_ack!1074 () (_ BitVec 64))
(declare-fun y_ack!1075 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1076) ((_ to_fp 11 53) x1_ack!1072))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1073) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1074) ((_ to_fp 11 53) x0_ack!1076))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1074) ((_ to_fp 11 53) x1_ack!1072)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1075) ((_ to_fp 11 53) y0_ack!1073))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1075) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1072)
                       ((_ to_fp 11 53) x0_ack!1076))
               ((_ to_fp 11 53) x0_ack!1076))
       ((_ to_fp 11 53) x1_ack!1072)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1072)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1072)
                       ((_ to_fp 11 53) x0_ack!1076)))
       ((_ to_fp 11 53) x0_ack!1076)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!1074 x0_ack!1076))

(check-sat)
(exit)
