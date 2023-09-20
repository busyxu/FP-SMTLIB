(declare-fun x1_ack!1259 () (_ BitVec 64))
(declare-fun x0_ack!1263 () (_ BitVec 64))
(declare-fun x2_ack!1260 () (_ BitVec 64))
(declare-fun b_ack!1262 () (_ BitVec 64))
(declare-fun a_ack!1261 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1263) ((_ to_fp 11 53) x1_ack!1259)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1259) ((_ to_fp 11 53) x2_ack!1260)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1259)
                       ((_ to_fp 11 53) x0_ack!1263))
               ((_ to_fp 11 53) x0_ack!1263))
       ((_ to_fp 11 53) x1_ack!1259)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1259)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1259)
                       ((_ to_fp 11 53) x0_ack!1263)))
       ((_ to_fp 11 53) x0_ack!1263)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1260)
                       ((_ to_fp 11 53) x1_ack!1259))
               ((_ to_fp 11 53) x1_ack!1259))
       ((_ to_fp 11 53) x2_ack!1260)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1260)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1260)
                       ((_ to_fp 11 53) x1_ack!1259)))
       ((_ to_fp 11 53) x1_ack!1259)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1259)
                    ((_ to_fp 11 53) x0_ack!1263))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1260)
                    ((_ to_fp 11 53) x1_ack!1259))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1261) ((_ to_fp 11 53) b_ack!1262))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1261) ((_ to_fp 11 53) x0_ack!1263))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1262) ((_ to_fp 11 53) x2_ack!1260))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1261) ((_ to_fp 11 53) b_ack!1262))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1261) ((_ to_fp 11 53) x0_ack!1263))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1261) ((_ to_fp 11 53) x1_ack!1259)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1259) ((_ to_fp 11 53) a_ack!1261))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1262) ((_ to_fp 11 53) x1_ack!1259))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1262) ((_ to_fp 11 53) x2_ack!1260)))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!1260 x1_ack!1259))

(check-sat)
(exit)
