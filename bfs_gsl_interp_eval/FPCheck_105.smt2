(declare-fun x1_ack!1124 () (_ BitVec 64))
(declare-fun x0_ack!1127 () (_ BitVec 64))
(declare-fun x2_ack!1125 () (_ BitVec 64))
(declare-fun xx_ack!1126 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1127) ((_ to_fp 11 53) x1_ack!1124)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1124) ((_ to_fp 11 53) x2_ack!1125)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1124)
                       ((_ to_fp 11 53) x0_ack!1127))
               ((_ to_fp 11 53) x0_ack!1127))
       ((_ to_fp 11 53) x1_ack!1124)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1124)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1124)
                       ((_ to_fp 11 53) x0_ack!1127)))
       ((_ to_fp 11 53) x0_ack!1127)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1125)
                       ((_ to_fp 11 53) x1_ack!1124))
               ((_ to_fp 11 53) x1_ack!1124))
       ((_ to_fp 11 53) x2_ack!1125)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1125)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1125)
                       ((_ to_fp 11 53) x1_ack!1124)))
       ((_ to_fp 11 53) x1_ack!1124)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1124)
                    ((_ to_fp 11 53) x0_ack!1127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1125)
                    ((_ to_fp 11 53) x1_ack!1124))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x0_ack!1127))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x2_ack!1125))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x0_ack!1127))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1126) ((_ to_fp 11 53) x1_ack!1124)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1124) ((_ to_fp 11 53) xx_ack!1126))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1125)
               ((_ to_fp 11 53) x1_ack!1124))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!1126 x1_ack!1124))

(check-sat)
(exit)
