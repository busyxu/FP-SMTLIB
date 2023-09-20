(declare-fun x1_ack!1063 () (_ BitVec 64))
(declare-fun x0_ack!1068 () (_ BitVec 64))
(declare-fun x2_ack!1064 () (_ BitVec 64))
(declare-fun xx_ack!1067 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1065 () (_ BitVec 64))
(declare-fun y2_ack!1066 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1068) ((_ to_fp 11 53) x1_ack!1063)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1063) ((_ to_fp 11 53) x2_ack!1064)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1063)
                       ((_ to_fp 11 53) x0_ack!1068))
               ((_ to_fp 11 53) x0_ack!1068))
       ((_ to_fp 11 53) x1_ack!1063)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1063)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1063)
                       ((_ to_fp 11 53) x0_ack!1068)))
       ((_ to_fp 11 53) x0_ack!1068)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1064)
                       ((_ to_fp 11 53) x1_ack!1063))
               ((_ to_fp 11 53) x1_ack!1063))
       ((_ to_fp 11 53) x2_ack!1064)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1064)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1064)
                       ((_ to_fp 11 53) x1_ack!1063)))
       ((_ to_fp 11 53) x1_ack!1063)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1063)
                    ((_ to_fp 11 53) x0_ack!1068))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1064)
                    ((_ to_fp 11 53) x1_ack!1063))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1067) ((_ to_fp 11 53) x0_ack!1068))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1067) ((_ to_fp 11 53) x2_ack!1064))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1067) ((_ to_fp 11 53) x0_ack!1068))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1067) ((_ to_fp 11 53) x1_ack!1063)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1063) ((_ to_fp 11 53) xx_ack!1067))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1064)
               ((_ to_fp 11 53) x1_ack!1063))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!1066 y1_ack!1065))

(check-sat)
(exit)
