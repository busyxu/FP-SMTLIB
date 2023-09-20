(declare-fun x1_ack!1739 () (_ BitVec 64))
(declare-fun x0_ack!1745 () (_ BitVec 64))
(declare-fun x2_ack!1740 () (_ BitVec 64))
(declare-fun b_ack!1744 () (_ BitVec 64))
(declare-fun a_ack!1743 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1741 () (_ BitVec 64))
(declare-fun y2_ack!1742 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1745) ((_ to_fp 11 53) x1_ack!1739)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1739) ((_ to_fp 11 53) x2_ack!1740)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1739)
                       ((_ to_fp 11 53) x0_ack!1745))
               ((_ to_fp 11 53) x0_ack!1745))
       ((_ to_fp 11 53) x1_ack!1739)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1739)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1739)
                       ((_ to_fp 11 53) x0_ack!1745)))
       ((_ to_fp 11 53) x0_ack!1745)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1740)
                       ((_ to_fp 11 53) x1_ack!1739))
               ((_ to_fp 11 53) x1_ack!1739))
       ((_ to_fp 11 53) x2_ack!1740)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1740)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1740)
                       ((_ to_fp 11 53) x1_ack!1739)))
       ((_ to_fp 11 53) x1_ack!1739)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1739)
                    ((_ to_fp 11 53) x0_ack!1745))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1740)
                    ((_ to_fp 11 53) x1_ack!1739))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1743) ((_ to_fp 11 53) b_ack!1744))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1743) ((_ to_fp 11 53) x0_ack!1745))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1744) ((_ to_fp 11 53) x2_ack!1740))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1743) ((_ to_fp 11 53) b_ack!1744))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1743) ((_ to_fp 11 53) x0_ack!1745))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1743) ((_ to_fp 11 53) x1_ack!1739))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1744) ((_ to_fp 11 53) x0_ack!1745))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1744) ((_ to_fp 11 53) x1_ack!1739)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1739) ((_ to_fp 11 53) b_ack!1744))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1739)
                    ((_ to_fp 11 53) x0_ack!1745))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!1742 y1_ack!1741))

(check-sat)
(exit)
