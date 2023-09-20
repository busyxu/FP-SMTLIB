(declare-fun x1_ack!1051 () (_ BitVec 64))
(declare-fun x0_ack!1056 () (_ BitVec 64))
(declare-fun x2_ack!1052 () (_ BitVec 64))
(declare-fun xx_ack!1055 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1053 () (_ BitVec 64))
(declare-fun y2_ack!1054 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1056) ((_ to_fp 11 53) x1_ack!1051)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1051) ((_ to_fp 11 53) x2_ack!1052)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1051)
                       ((_ to_fp 11 53) x0_ack!1056))
               ((_ to_fp 11 53) x0_ack!1056))
       ((_ to_fp 11 53) x1_ack!1051)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1051)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1051)
                       ((_ to_fp 11 53) x0_ack!1056)))
       ((_ to_fp 11 53) x0_ack!1056)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1052)
                       ((_ to_fp 11 53) x1_ack!1051))
               ((_ to_fp 11 53) x1_ack!1051))
       ((_ to_fp 11 53) x2_ack!1052)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1052)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1052)
                       ((_ to_fp 11 53) x1_ack!1051)))
       ((_ to_fp 11 53) x1_ack!1051)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1051)
                    ((_ to_fp 11 53) x0_ack!1056))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1052)
                    ((_ to_fp 11 53) x1_ack!1051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1055) ((_ to_fp 11 53) x0_ack!1056))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1055) ((_ to_fp 11 53) x2_ack!1052))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1055) ((_ to_fp 11 53) x0_ack!1056))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1055) ((_ to_fp 11 53) x1_ack!1051)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1051) ((_ to_fp 11 53) xx_ack!1055))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1052)
               ((_ to_fp 11 53) x1_ack!1051))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!1054 y1_ack!1053))

(check-sat)
(exit)
