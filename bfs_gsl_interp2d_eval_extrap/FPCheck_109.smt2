(declare-fun x1_ack!1147 () (_ BitVec 64))
(declare-fun x0_ack!1151 () (_ BitVec 64))
(declare-fun y0_ack!1148 () (_ BitVec 64))
(declare-fun x_ack!1149 () (_ BitVec 64))
(declare-fun y_ack!1150 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1151) ((_ to_fp 11 53) x1_ack!1147))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1148) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1149) ((_ to_fp 11 53) x0_ack!1151))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1149) ((_ to_fp 11 53) x1_ack!1147)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1150) ((_ to_fp 11 53) y0_ack!1148))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1150) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1147)
                       ((_ to_fp 11 53) x0_ack!1151))
               ((_ to_fp 11 53) x0_ack!1151))
       ((_ to_fp 11 53) x1_ack!1147)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1147)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1147)
                       ((_ to_fp 11 53) x0_ack!1151)))
       ((_ to_fp 11 53) x0_ack!1151)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!1150 y0_ack!1148))

(check-sat)
(exit)
