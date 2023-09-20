(declare-fun x1_ack!1752 () (_ BitVec 64))
(declare-fun x0_ack!1756 () (_ BitVec 64))
(declare-fun y0_ack!1753 () (_ BitVec 64))
(declare-fun x_ack!1754 () (_ BitVec 64))
(declare-fun y_ack!1755 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1756) ((_ to_fp 11 53) x1_ack!1752))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1753) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1754) ((_ to_fp 11 53) x0_ack!1756))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1754) ((_ to_fp 11 53) x1_ack!1752)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1755) ((_ to_fp 11 53) y0_ack!1753))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1755) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1752)
                       ((_ to_fp 11 53) x0_ack!1756))
               ((_ to_fp 11 53) x0_ack!1756))
       ((_ to_fp 11 53) x1_ack!1752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1752)
                       ((_ to_fp 11 53) x0_ack!1756)))
       ((_ to_fp 11 53) x0_ack!1756)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1755)
                       ((_ to_fp 11 53) y0_ack!1753))
               ((_ to_fp 11 53) y0_ack!1753))
       ((_ to_fp 11 53) y_ack!1755)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1755)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1755)
                       ((_ to_fp 11 53) y0_ack!1753)))
       ((_ to_fp 11 53) y0_ack!1753)))

(check-sat)
(exit)
