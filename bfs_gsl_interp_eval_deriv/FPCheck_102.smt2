(declare-fun x1_ack!1085 () (_ BitVec 64))
(declare-fun x0_ack!1088 () (_ BitVec 64))
(declare-fun x2_ack!1086 () (_ BitVec 64))
(declare-fun xx_ack!1087 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1088) ((_ to_fp 11 53) x1_ack!1085)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1085) ((_ to_fp 11 53) x2_ack!1086)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1085)
                       ((_ to_fp 11 53) x0_ack!1088))
               ((_ to_fp 11 53) x0_ack!1088))
       ((_ to_fp 11 53) x1_ack!1085)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1085)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1085)
                       ((_ to_fp 11 53) x0_ack!1088)))
       ((_ to_fp 11 53) x0_ack!1088)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1086)
                       ((_ to_fp 11 53) x1_ack!1085))
               ((_ to_fp 11 53) x1_ack!1085))
       ((_ to_fp 11 53) x2_ack!1086)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1086)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1086)
                       ((_ to_fp 11 53) x1_ack!1085)))
       ((_ to_fp 11 53) x1_ack!1085)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1085)
                    ((_ to_fp 11 53) x0_ack!1088))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1086)
                    ((_ to_fp 11 53) x1_ack!1085))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1087) ((_ to_fp 11 53) x0_ack!1088))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1087) ((_ to_fp 11 53) x2_ack!1086))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1087) ((_ to_fp 11 53) x0_ack!1088))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1087) ((_ to_fp 11 53) x1_ack!1085)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1085) ((_ to_fp 11 53) xx_ack!1087))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1086)
               ((_ to_fp 11 53) x1_ack!1085))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!1087 x1_ack!1085))

(check-sat)
(exit)
