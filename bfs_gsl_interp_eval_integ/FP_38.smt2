(declare-fun x1_ack!1244 () (_ BitVec 64))
(declare-fun x0_ack!1248 () (_ BitVec 64))
(declare-fun x2_ack!1245 () (_ BitVec 64))
(declare-fun b_ack!1247 () (_ BitVec 64))
(declare-fun a_ack!1246 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1248) ((_ to_fp 11 53) x1_ack!1244)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1244) ((_ to_fp 11 53) x2_ack!1245)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1244)
                       ((_ to_fp 11 53) x0_ack!1248))
               ((_ to_fp 11 53) x0_ack!1248))
       ((_ to_fp 11 53) x1_ack!1244)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1244)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1244)
                       ((_ to_fp 11 53) x0_ack!1248)))
       ((_ to_fp 11 53) x0_ack!1248)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1245)
                       ((_ to_fp 11 53) x1_ack!1244))
               ((_ to_fp 11 53) x1_ack!1244))
       ((_ to_fp 11 53) x2_ack!1245)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1245)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1245)
                       ((_ to_fp 11 53) x1_ack!1244)))
       ((_ to_fp 11 53) x1_ack!1244)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1244)
                    ((_ to_fp 11 53) x0_ack!1248))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1245)
                    ((_ to_fp 11 53) x1_ack!1244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1246) ((_ to_fp 11 53) b_ack!1247))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1246) ((_ to_fp 11 53) x0_ack!1248))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1247) ((_ to_fp 11 53) x2_ack!1245))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1246) ((_ to_fp 11 53) b_ack!1247))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1246) ((_ to_fp 11 53) x0_ack!1248))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1246) ((_ to_fp 11 53) x1_ack!1244)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!1244) ((_ to_fp 11 53) a_ack!1246)))

(check-sat)
(exit)
