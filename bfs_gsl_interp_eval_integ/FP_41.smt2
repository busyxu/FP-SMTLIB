(declare-fun x1_ack!1319 () (_ BitVec 64))
(declare-fun x0_ack!1323 () (_ BitVec 64))
(declare-fun x2_ack!1320 () (_ BitVec 64))
(declare-fun b_ack!1322 () (_ BitVec 64))
(declare-fun a_ack!1321 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1323) ((_ to_fp 11 53) x1_ack!1319)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1319) ((_ to_fp 11 53) x2_ack!1320)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1319)
                       ((_ to_fp 11 53) x0_ack!1323))
               ((_ to_fp 11 53) x0_ack!1323))
       ((_ to_fp 11 53) x1_ack!1319)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1319)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1319)
                       ((_ to_fp 11 53) x0_ack!1323)))
       ((_ to_fp 11 53) x0_ack!1323)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1320)
                       ((_ to_fp 11 53) x1_ack!1319))
               ((_ to_fp 11 53) x1_ack!1319))
       ((_ to_fp 11 53) x2_ack!1320)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1320)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1320)
                       ((_ to_fp 11 53) x1_ack!1319)))
       ((_ to_fp 11 53) x1_ack!1319)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1319)
                    ((_ to_fp 11 53) x0_ack!1323))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1320)
                    ((_ to_fp 11 53) x1_ack!1319))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1321) ((_ to_fp 11 53) b_ack!1322))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1321) ((_ to_fp 11 53) x0_ack!1323))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1322) ((_ to_fp 11 53) x2_ack!1320))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1321) ((_ to_fp 11 53) b_ack!1322))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1321) ((_ to_fp 11 53) x0_ack!1323))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1321) ((_ to_fp 11 53) x1_ack!1319)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1319) ((_ to_fp 11 53) a_ack!1321))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1322) ((_ to_fp 11 53) x1_ack!1319))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1322) ((_ to_fp 11 53) x2_ack!1320)))

(check-sat)
(exit)
