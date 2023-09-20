(declare-fun x1_ack!1979 () (_ BitVec 64))
(declare-fun x0_ack!1983 () (_ BitVec 64))
(declare-fun y0_ack!1980 () (_ BitVec 64))
(declare-fun x_ack!1981 () (_ BitVec 64))
(declare-fun y_ack!1982 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1983) ((_ to_fp 11 53) x1_ack!1979))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1980) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1981) ((_ to_fp 11 53) x0_ack!1983))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1981) ((_ to_fp 11 53) x1_ack!1979)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1982) ((_ to_fp 11 53) y0_ack!1980))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1982) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1979)
                       ((_ to_fp 11 53) x0_ack!1983))
               ((_ to_fp 11 53) x0_ack!1983))
       ((_ to_fp 11 53) x1_ack!1979)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1979)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1979)
                       ((_ to_fp 11 53) x0_ack!1983)))
       ((_ to_fp 11 53) x0_ack!1983)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1982)
                       ((_ to_fp 11 53) y0_ack!1980))
               ((_ to_fp 11 53) y0_ack!1980))
       ((_ to_fp 11 53) y_ack!1982)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1982)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1982)
                       ((_ to_fp 11 53) y0_ack!1980)))
       ((_ to_fp 11 53) y0_ack!1980)))

(check-sat)
(exit)
