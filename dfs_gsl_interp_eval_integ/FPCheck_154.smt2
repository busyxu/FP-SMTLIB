(declare-fun x1_ack!1725 () (_ BitVec 64))
(declare-fun x0_ack!1731 () (_ BitVec 64))
(declare-fun x2_ack!1726 () (_ BitVec 64))
(declare-fun b_ack!1730 () (_ BitVec 64))
(declare-fun a_ack!1729 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1727 () (_ BitVec 64))
(declare-fun y2_ack!1728 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1731) ((_ to_fp 11 53) x1_ack!1725)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1725) ((_ to_fp 11 53) x2_ack!1726)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1725)
                       ((_ to_fp 11 53) x0_ack!1731))
               ((_ to_fp 11 53) x0_ack!1731))
       ((_ to_fp 11 53) x1_ack!1725)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1725)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1725)
                       ((_ to_fp 11 53) x0_ack!1731)))
       ((_ to_fp 11 53) x0_ack!1731)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1726)
                       ((_ to_fp 11 53) x1_ack!1725))
               ((_ to_fp 11 53) x1_ack!1725))
       ((_ to_fp 11 53) x2_ack!1726)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1726)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1726)
                       ((_ to_fp 11 53) x1_ack!1725)))
       ((_ to_fp 11 53) x1_ack!1725)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1725)
                    ((_ to_fp 11 53) x0_ack!1731))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1726)
                    ((_ to_fp 11 53) x1_ack!1725))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1729) ((_ to_fp 11 53) b_ack!1730))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1729) ((_ to_fp 11 53) x0_ack!1731))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1730) ((_ to_fp 11 53) x2_ack!1726))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1729) ((_ to_fp 11 53) b_ack!1730))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1729) ((_ to_fp 11 53) x0_ack!1731))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1729) ((_ to_fp 11 53) x1_ack!1725))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1730) ((_ to_fp 11 53) x0_ack!1731))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1730) ((_ to_fp 11 53) x1_ack!1725)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1725) ((_ to_fp 11 53) b_ack!1730))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1725)
                    ((_ to_fp 11 53) x0_ack!1731))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!1728 y1_ack!1727))

(check-sat)
(exit)
