(declare-fun x1_ack!1062 () (_ BitVec 64))
(declare-fun x0_ack!1066 () (_ BitVec 64))
(declare-fun y0_ack!1063 () (_ BitVec 64))
(declare-fun x_ack!1064 () (_ BitVec 64))
(declare-fun y_ack!1065 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1066) ((_ to_fp 11 53) x1_ack!1062))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1063) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1064) ((_ to_fp 11 53) x0_ack!1066))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1064) ((_ to_fp 11 53) x1_ack!1062)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1065) ((_ to_fp 11 53) y0_ack!1063))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1065) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1062)
                       ((_ to_fp 11 53) x0_ack!1066))
               ((_ to_fp 11 53) x0_ack!1066))
       ((_ to_fp 11 53) x1_ack!1062)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1062)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1062)
                       ((_ to_fp 11 53) x0_ack!1066)))
       ((_ to_fp 11 53) x0_ack!1066)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!1064 x0_ack!1066))

(check-sat)
(exit)
