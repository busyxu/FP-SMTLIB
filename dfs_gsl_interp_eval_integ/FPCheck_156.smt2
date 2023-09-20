(declare-fun x1_ack!1753 () (_ BitVec 64))
(declare-fun x0_ack!1759 () (_ BitVec 64))
(declare-fun x2_ack!1754 () (_ BitVec 64))
(declare-fun b_ack!1758 () (_ BitVec 64))
(declare-fun a_ack!1757 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1755 () (_ BitVec 64))
(declare-fun y2_ack!1756 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1759) ((_ to_fp 11 53) x1_ack!1753)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1753) ((_ to_fp 11 53) x2_ack!1754)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1753)
                       ((_ to_fp 11 53) x0_ack!1759))
               ((_ to_fp 11 53) x0_ack!1759))
       ((_ to_fp 11 53) x1_ack!1753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1753)
                       ((_ to_fp 11 53) x0_ack!1759)))
       ((_ to_fp 11 53) x0_ack!1759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1754)
                       ((_ to_fp 11 53) x1_ack!1753))
               ((_ to_fp 11 53) x1_ack!1753))
       ((_ to_fp 11 53) x2_ack!1754)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1754)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1754)
                       ((_ to_fp 11 53) x1_ack!1753)))
       ((_ to_fp 11 53) x1_ack!1753)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1753)
                    ((_ to_fp 11 53) x0_ack!1759))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1754)
                    ((_ to_fp 11 53) x1_ack!1753))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1757) ((_ to_fp 11 53) b_ack!1758))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1757) ((_ to_fp 11 53) x0_ack!1759))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1758) ((_ to_fp 11 53) x2_ack!1754))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1757) ((_ to_fp 11 53) b_ack!1758))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1757) ((_ to_fp 11 53) x0_ack!1759))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1757) ((_ to_fp 11 53) x1_ack!1753))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1758) ((_ to_fp 11 53) x0_ack!1759))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1758) ((_ to_fp 11 53) x1_ack!1753)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1753) ((_ to_fp 11 53) b_ack!1758))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1753)
                    ((_ to_fp 11 53) x0_ack!1759))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!1756 y1_ack!1755))

(check-sat)
(exit)
