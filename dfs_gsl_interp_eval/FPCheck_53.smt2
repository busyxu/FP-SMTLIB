(declare-fun x1_ack!463 () (_ BitVec 64))
(declare-fun x0_ack!466 () (_ BitVec 64))
(declare-fun x2_ack!464 () (_ BitVec 64))
(declare-fun xx_ack!465 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!466) ((_ to_fp 11 53) x1_ack!463)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!463) ((_ to_fp 11 53) x2_ack!464)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!463)
                       ((_ to_fp 11 53) x0_ack!466))
               ((_ to_fp 11 53) x0_ack!466))
       ((_ to_fp 11 53) x1_ack!463)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!463)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!463)
                       ((_ to_fp 11 53) x0_ack!466)))
       ((_ to_fp 11 53) x0_ack!466)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!464)
                       ((_ to_fp 11 53) x1_ack!463))
               ((_ to_fp 11 53) x1_ack!463))
       ((_ to_fp 11 53) x2_ack!464)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!464)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!464)
                       ((_ to_fp 11 53) x1_ack!463)))
       ((_ to_fp 11 53) x1_ack!463)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!463)
                    ((_ to_fp 11 53) x0_ack!466))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!464)
                    ((_ to_fp 11 53) x1_ack!463))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!465) ((_ to_fp 11 53) x0_ack!466))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!465) ((_ to_fp 11 53) x2_ack!464))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!465) ((_ to_fp 11 53) x0_ack!466))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!465) ((_ to_fp 11 53) x1_ack!463)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!463) ((_ to_fp 11 53) xx_ack!465))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!464)
               ((_ to_fp 11 53) x1_ack!463))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!465 x1_ack!463))

(check-sat)
(exit)
