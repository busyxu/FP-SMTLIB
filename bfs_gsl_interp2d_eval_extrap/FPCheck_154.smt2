(declare-fun x1_ack!1572 () (_ BitVec 64))
(declare-fun x0_ack!1576 () (_ BitVec 64))
(declare-fun y0_ack!1573 () (_ BitVec 64))
(declare-fun x_ack!1574 () (_ BitVec 64))
(declare-fun y_ack!1575 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1576) ((_ to_fp 11 53) x1_ack!1572))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1573) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1574) ((_ to_fp 11 53) x0_ack!1576)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1575) ((_ to_fp 11 53) y0_ack!1573))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1575) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1572)
                       ((_ to_fp 11 53) x0_ack!1576))
               ((_ to_fp 11 53) x0_ack!1576))
       ((_ to_fp 11 53) x1_ack!1572)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1572)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1572)
                       ((_ to_fp 11 53) x0_ack!1576)))
       ((_ to_fp 11 53) x0_ack!1576)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!1575 y0_ack!1573))

(check-sat)
(exit)
