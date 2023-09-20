(declare-fun x1_ack!1765 () (_ BitVec 64))
(declare-fun x0_ack!1771 () (_ BitVec 64))
(declare-fun x2_ack!1766 () (_ BitVec 64))
(declare-fun b_ack!1770 () (_ BitVec 64))
(declare-fun a_ack!1769 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1767 () (_ BitVec 64))
(declare-fun y2_ack!1768 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1771) ((_ to_fp 11 53) x1_ack!1765)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1765) ((_ to_fp 11 53) x2_ack!1766)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1765)
                       ((_ to_fp 11 53) x0_ack!1771))
               ((_ to_fp 11 53) x0_ack!1771))
       ((_ to_fp 11 53) x1_ack!1765)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1765)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1765)
                       ((_ to_fp 11 53) x0_ack!1771)))
       ((_ to_fp 11 53) x0_ack!1771)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1766)
                       ((_ to_fp 11 53) x1_ack!1765))
               ((_ to_fp 11 53) x1_ack!1765))
       ((_ to_fp 11 53) x2_ack!1766)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1766)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1766)
                       ((_ to_fp 11 53) x1_ack!1765)))
       ((_ to_fp 11 53) x1_ack!1765)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1765)
                    ((_ to_fp 11 53) x0_ack!1771))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1766)
                    ((_ to_fp 11 53) x1_ack!1765))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1769) ((_ to_fp 11 53) b_ack!1770))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1769) ((_ to_fp 11 53) x0_ack!1771))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1770) ((_ to_fp 11 53) x2_ack!1766))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1769) ((_ to_fp 11 53) b_ack!1770))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1769) ((_ to_fp 11 53) x0_ack!1771))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1769) ((_ to_fp 11 53) x1_ack!1765))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1770) ((_ to_fp 11 53) x0_ack!1771))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1770) ((_ to_fp 11 53) x1_ack!1765)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1765) ((_ to_fp 11 53) b_ack!1770))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1765)
                    ((_ to_fp 11 53) x0_ack!1771))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1766)
                    ((_ to_fp 11 53) x1_ack!1765))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1768)
          ((_ to_fp 11 53) y1_ack!1767))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1766)
          ((_ to_fp 11 53) x1_ack!1765))))

(check-sat)
(exit)
