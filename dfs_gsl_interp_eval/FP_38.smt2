(declare-fun x1_ack!1132 () (_ BitVec 64))
(declare-fun x0_ack!1135 () (_ BitVec 64))
(declare-fun x2_ack!1133 () (_ BitVec 64))
(declare-fun xx_ack!1134 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1135) ((_ to_fp 11 53) x1_ack!1132)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1132) ((_ to_fp 11 53) x2_ack!1133)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1132)
                       ((_ to_fp 11 53) x0_ack!1135))
               ((_ to_fp 11 53) x0_ack!1135))
       ((_ to_fp 11 53) x1_ack!1132)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1132)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1132)
                       ((_ to_fp 11 53) x0_ack!1135)))
       ((_ to_fp 11 53) x0_ack!1135)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1133)
                       ((_ to_fp 11 53) x1_ack!1132))
               ((_ to_fp 11 53) x1_ack!1132))
       ((_ to_fp 11 53) x2_ack!1133)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1133)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1133)
                       ((_ to_fp 11 53) x1_ack!1132)))
       ((_ to_fp 11 53) x1_ack!1132)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1132)
                    ((_ to_fp 11 53) x0_ack!1135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1133)
                    ((_ to_fp 11 53) x1_ack!1132))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1134) ((_ to_fp 11 53) x0_ack!1135))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1134) ((_ to_fp 11 53) x2_ack!1133))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!1134) ((_ to_fp 11 53) x0_ack!1135)))

(check-sat)
(exit)
