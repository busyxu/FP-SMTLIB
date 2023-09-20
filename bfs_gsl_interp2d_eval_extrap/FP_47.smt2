(declare-fun x1_ack!1837 () (_ BitVec 64))
(declare-fun x0_ack!1841 () (_ BitVec 64))
(declare-fun y0_ack!1838 () (_ BitVec 64))
(declare-fun x_ack!1839 () (_ BitVec 64))
(declare-fun y_ack!1840 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1841) ((_ to_fp 11 53) x1_ack!1837))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1838) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1839) ((_ to_fp 11 53) x0_ack!1841))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1839) ((_ to_fp 11 53) x1_ack!1837)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1840) ((_ to_fp 11 53) y0_ack!1838))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1840) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1837)
                       ((_ to_fp 11 53) x0_ack!1841))
               ((_ to_fp 11 53) x0_ack!1841))
       ((_ to_fp 11 53) x1_ack!1837)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1837)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1837)
                       ((_ to_fp 11 53) x0_ack!1841)))
       ((_ to_fp 11 53) x0_ack!1841)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1840)
                       ((_ to_fp 11 53) y0_ack!1838))
               ((_ to_fp 11 53) y0_ack!1838))
       ((_ to_fp 11 53) y_ack!1840)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1840)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1840)
                       ((_ to_fp 11 53) y0_ack!1838)))
       ((_ to_fp 11 53) y0_ack!1838)))

(check-sat)
(exit)
