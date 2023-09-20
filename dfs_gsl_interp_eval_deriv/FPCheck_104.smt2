(declare-fun x1_ack!1151 () (_ BitVec 64))
(declare-fun x0_ack!1156 () (_ BitVec 64))
(declare-fun x2_ack!1152 () (_ BitVec 64))
(declare-fun xx_ack!1155 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1153 () (_ BitVec 64))
(declare-fun y1_ack!1154 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1156) ((_ to_fp 11 53) x1_ack!1151)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1151) ((_ to_fp 11 53) x2_ack!1152)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1151)
                       ((_ to_fp 11 53) x0_ack!1156))
               ((_ to_fp 11 53) x0_ack!1156))
       ((_ to_fp 11 53) x1_ack!1151)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1151)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1151)
                       ((_ to_fp 11 53) x0_ack!1156)))
       ((_ to_fp 11 53) x0_ack!1156)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1152)
                       ((_ to_fp 11 53) x1_ack!1151))
               ((_ to_fp 11 53) x1_ack!1151))
       ((_ to_fp 11 53) x2_ack!1152)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1152)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1152)
                       ((_ to_fp 11 53) x1_ack!1151)))
       ((_ to_fp 11 53) x1_ack!1151)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1151)
                    ((_ to_fp 11 53) x0_ack!1156))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1152)
                    ((_ to_fp 11 53) x1_ack!1151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1155) ((_ to_fp 11 53) x0_ack!1156))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1155) ((_ to_fp 11 53) x2_ack!1152))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1155) ((_ to_fp 11 53) x0_ack!1156))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1155) ((_ to_fp 11 53) x1_ack!1151))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1151)
               ((_ to_fp 11 53) x0_ack!1156))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!1154 y0_ack!1153))

(check-sat)
(exit)
