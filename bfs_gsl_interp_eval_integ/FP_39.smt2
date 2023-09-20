(declare-fun x1_ack!1249 () (_ BitVec 64))
(declare-fun x0_ack!1253 () (_ BitVec 64))
(declare-fun x2_ack!1250 () (_ BitVec 64))
(declare-fun b_ack!1252 () (_ BitVec 64))
(declare-fun a_ack!1251 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1253) ((_ to_fp 11 53) x1_ack!1249)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1249) ((_ to_fp 11 53) x2_ack!1250)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1249)
                       ((_ to_fp 11 53) x0_ack!1253))
               ((_ to_fp 11 53) x0_ack!1253))
       ((_ to_fp 11 53) x1_ack!1249)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1249)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1249)
                       ((_ to_fp 11 53) x0_ack!1253)))
       ((_ to_fp 11 53) x0_ack!1253)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1250)
                       ((_ to_fp 11 53) x1_ack!1249))
               ((_ to_fp 11 53) x1_ack!1249))
       ((_ to_fp 11 53) x2_ack!1250)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1250)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1250)
                       ((_ to_fp 11 53) x1_ack!1249)))
       ((_ to_fp 11 53) x1_ack!1249)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1249)
                    ((_ to_fp 11 53) x0_ack!1253))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1250)
                    ((_ to_fp 11 53) x1_ack!1249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1251) ((_ to_fp 11 53) b_ack!1252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1251) ((_ to_fp 11 53) x0_ack!1253))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1252) ((_ to_fp 11 53) x2_ack!1250))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1251) ((_ to_fp 11 53) b_ack!1252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1251) ((_ to_fp 11 53) x0_ack!1253))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1251) ((_ to_fp 11 53) x1_ack!1249)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1249) ((_ to_fp 11 53) a_ack!1251))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1252) ((_ to_fp 11 53) x1_ack!1249)))

(check-sat)
(exit)
