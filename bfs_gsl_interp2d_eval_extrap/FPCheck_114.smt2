(declare-fun x1_ack!1192 () (_ BitVec 64))
(declare-fun x0_ack!1196 () (_ BitVec 64))
(declare-fun y0_ack!1193 () (_ BitVec 64))
(declare-fun x_ack!1194 () (_ BitVec 64))
(declare-fun y_ack!1195 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1196) ((_ to_fp 11 53) x1_ack!1192))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1193) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1194) ((_ to_fp 11 53) x0_ack!1196))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1194) ((_ to_fp 11 53) x1_ack!1192))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1195) ((_ to_fp 11 53) y0_ack!1193))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1195) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1192)
                       ((_ to_fp 11 53) x0_ack!1196))
               ((_ to_fp 11 53) x0_ack!1196))
       ((_ to_fp 11 53) x1_ack!1192)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1192)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1192)
                       ((_ to_fp 11 53) x0_ack!1196)))
       ((_ to_fp 11 53) x0_ack!1196)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!1193))

(check-sat)
(exit)
