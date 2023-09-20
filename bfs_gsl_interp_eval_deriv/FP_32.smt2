(declare-fun x1_ack!1031 () (_ BitVec 64))
(declare-fun x0_ack!1034 () (_ BitVec 64))
(declare-fun x2_ack!1032 () (_ BitVec 64))
(declare-fun xx_ack!1033 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1034) ((_ to_fp 11 53) x1_ack!1031)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1031) ((_ to_fp 11 53) x2_ack!1032)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1034))
               ((_ to_fp 11 53) x0_ack!1034))
       ((_ to_fp 11 53) x1_ack!1031)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1031)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1034)))
       ((_ to_fp 11 53) x0_ack!1034)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1032)
                       ((_ to_fp 11 53) x1_ack!1031))
               ((_ to_fp 11 53) x1_ack!1031))
       ((_ to_fp 11 53) x2_ack!1032)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1032)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1032)
                       ((_ to_fp 11 53) x1_ack!1031)))
       ((_ to_fp 11 53) x1_ack!1031)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1031)
                    ((_ to_fp 11 53) x0_ack!1034))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1032)
                    ((_ to_fp 11 53) x1_ack!1031))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1033) ((_ to_fp 11 53) x0_ack!1034))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1033) ((_ to_fp 11 53) x2_ack!1032))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1033) ((_ to_fp 11 53) x0_ack!1034))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1033) ((_ to_fp 11 53) x1_ack!1031))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1031)
                    ((_ to_fp 11 53) x0_ack!1034))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
