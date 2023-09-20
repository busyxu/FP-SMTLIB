(declare-fun x1_ack!1197 () (_ BitVec 64))
(declare-fun x0_ack!1200 () (_ BitVec 64))
(declare-fun x2_ack!1198 () (_ BitVec 64))
(declare-fun xx_ack!1199 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1200) ((_ to_fp 11 53) x1_ack!1197)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1197) ((_ to_fp 11 53) x2_ack!1198)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1197)
                       ((_ to_fp 11 53) x0_ack!1200))
               ((_ to_fp 11 53) x0_ack!1200))
       ((_ to_fp 11 53) x1_ack!1197)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1197)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1197)
                       ((_ to_fp 11 53) x0_ack!1200)))
       ((_ to_fp 11 53) x0_ack!1200)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1198)
                       ((_ to_fp 11 53) x1_ack!1197))
               ((_ to_fp 11 53) x1_ack!1197))
       ((_ to_fp 11 53) x2_ack!1198)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1198)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1198)
                       ((_ to_fp 11 53) x1_ack!1197)))
       ((_ to_fp 11 53) x1_ack!1197)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1197)
                    ((_ to_fp 11 53) x0_ack!1200))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1198)
                    ((_ to_fp 11 53) x1_ack!1197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1199) ((_ to_fp 11 53) x0_ack!1200))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1199) ((_ to_fp 11 53) x2_ack!1198))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1199) ((_ to_fp 11 53) x0_ack!1200))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1199) ((_ to_fp 11 53) x1_ack!1197))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1197)
               ((_ to_fp 11 53) x0_ack!1200))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!1199 x0_ack!1200))

(check-sat)
(exit)
