(declare-fun x1_ack!1216 () (_ BitVec 64))
(declare-fun x0_ack!1222 () (_ BitVec 64))
(declare-fun x2_ack!1217 () (_ BitVec 64))
(declare-fun b_ack!1221 () (_ BitVec 64))
(declare-fun a_ack!1220 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1218 () (_ BitVec 64))
(declare-fun y2_ack!1219 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1222) ((_ to_fp 11 53) x1_ack!1216)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1216) ((_ to_fp 11 53) x2_ack!1217)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1216)
                       ((_ to_fp 11 53) x0_ack!1222))
               ((_ to_fp 11 53) x0_ack!1222))
       ((_ to_fp 11 53) x1_ack!1216)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1216)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1216)
                       ((_ to_fp 11 53) x0_ack!1222)))
       ((_ to_fp 11 53) x0_ack!1222)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1217)
                       ((_ to_fp 11 53) x1_ack!1216))
               ((_ to_fp 11 53) x1_ack!1216))
       ((_ to_fp 11 53) x2_ack!1217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1217)
                       ((_ to_fp 11 53) x1_ack!1216)))
       ((_ to_fp 11 53) x1_ack!1216)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1216)
                    ((_ to_fp 11 53) x0_ack!1222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1217)
                    ((_ to_fp 11 53) x1_ack!1216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1220) ((_ to_fp 11 53) b_ack!1221))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1220) ((_ to_fp 11 53) x0_ack!1222))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) x2_ack!1217))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1220) ((_ to_fp 11 53) b_ack!1221))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1220) ((_ to_fp 11 53) x0_ack!1222))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1220) ((_ to_fp 11 53) x1_ack!1216)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1216) ((_ to_fp 11 53) a_ack!1220))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) x1_ack!1216))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1221) ((_ to_fp 11 53) x2_ack!1217))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1217)
                    ((_ to_fp 11 53) x1_ack!1216))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1219)
          ((_ to_fp 11 53) y1_ack!1218))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1217)
          ((_ to_fp 11 53) x1_ack!1216))))

(check-sat)
(exit)
