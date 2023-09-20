(declare-fun x1_ack!1194 () (_ BitVec 64))
(declare-fun x0_ack!1197 () (_ BitVec 64))
(declare-fun x2_ack!1195 () (_ BitVec 64))
(declare-fun xx_ack!1196 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1197) ((_ to_fp 11 53) x1_ack!1194)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1194) ((_ to_fp 11 53) x2_ack!1195)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1194)
                       ((_ to_fp 11 53) x0_ack!1197))
               ((_ to_fp 11 53) x0_ack!1197))
       ((_ to_fp 11 53) x1_ack!1194)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1194)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1194)
                       ((_ to_fp 11 53) x0_ack!1197)))
       ((_ to_fp 11 53) x0_ack!1197)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1195)
                       ((_ to_fp 11 53) x1_ack!1194))
               ((_ to_fp 11 53) x1_ack!1194))
       ((_ to_fp 11 53) x2_ack!1195)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1195)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1195)
                       ((_ to_fp 11 53) x1_ack!1194)))
       ((_ to_fp 11 53) x1_ack!1194)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1194)
                    ((_ to_fp 11 53) x0_ack!1197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1195)
                    ((_ to_fp 11 53) x1_ack!1194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1196) ((_ to_fp 11 53) x0_ack!1197))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1196) ((_ to_fp 11 53) x2_ack!1195))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1196) ((_ to_fp 11 53) x0_ack!1197))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1196) ((_ to_fp 11 53) x1_ack!1194))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1194)
               ((_ to_fp 11 53) x0_ack!1197))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!1196 x0_ack!1197))

(check-sat)
(exit)
