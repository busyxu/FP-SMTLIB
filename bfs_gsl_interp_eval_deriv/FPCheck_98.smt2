(declare-fun x1_ack!1039 () (_ BitVec 64))
(declare-fun x0_ack!1044 () (_ BitVec 64))
(declare-fun x2_ack!1040 () (_ BitVec 64))
(declare-fun xx_ack!1043 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1041 () (_ BitVec 64))
(declare-fun y2_ack!1042 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1044) ((_ to_fp 11 53) x1_ack!1039)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1039) ((_ to_fp 11 53) x2_ack!1040)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1039)
                       ((_ to_fp 11 53) x0_ack!1044))
               ((_ to_fp 11 53) x0_ack!1044))
       ((_ to_fp 11 53) x1_ack!1039)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1039)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1039)
                       ((_ to_fp 11 53) x0_ack!1044)))
       ((_ to_fp 11 53) x0_ack!1044)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1040)
                       ((_ to_fp 11 53) x1_ack!1039))
               ((_ to_fp 11 53) x1_ack!1039))
       ((_ to_fp 11 53) x2_ack!1040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1040)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1040)
                       ((_ to_fp 11 53) x1_ack!1039)))
       ((_ to_fp 11 53) x1_ack!1039)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1039)
                    ((_ to_fp 11 53) x0_ack!1044))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1040)
                    ((_ to_fp 11 53) x1_ack!1039))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1043) ((_ to_fp 11 53) x0_ack!1044))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1043) ((_ to_fp 11 53) x2_ack!1040))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1043) ((_ to_fp 11 53) x0_ack!1044))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1043) ((_ to_fp 11 53) x1_ack!1039)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1039) ((_ to_fp 11 53) xx_ack!1043))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1040)
               ((_ to_fp 11 53) x1_ack!1039))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!1042 y1_ack!1041))

(check-sat)
(exit)
