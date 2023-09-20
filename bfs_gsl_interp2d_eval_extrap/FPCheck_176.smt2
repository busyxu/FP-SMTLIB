(declare-fun x1_ack!1767 () (_ BitVec 64))
(declare-fun x0_ack!1771 () (_ BitVec 64))
(declare-fun y0_ack!1768 () (_ BitVec 64))
(declare-fun x_ack!1769 () (_ BitVec 64))
(declare-fun y_ack!1770 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1771) ((_ to_fp 11 53) x1_ack!1767))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1768) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1769) ((_ to_fp 11 53) x0_ack!1771))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1769) ((_ to_fp 11 53) x1_ack!1767)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1770) ((_ to_fp 11 53) y0_ack!1768))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1770) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1767)
                       ((_ to_fp 11 53) x0_ack!1771))
               ((_ to_fp 11 53) x0_ack!1771))
       ((_ to_fp 11 53) x1_ack!1767)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1767)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1767)
                       ((_ to_fp 11 53) x0_ack!1771)))
       ((_ to_fp 11 53) x0_ack!1771)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1770)
                       ((_ to_fp 11 53) y0_ack!1768))
               ((_ to_fp 11 53) y0_ack!1768))
       ((_ to_fp 11 53) y_ack!1770)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1770)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1770)
                       ((_ to_fp 11 53) y0_ack!1768)))
       ((_ to_fp 11 53) y0_ack!1768)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!1769)
                  ((_ to_fp 11 53) x0_ack!1771))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1767)
                  ((_ to_fp 11 53) x0_ack!1771)))))

(check-sat)
(exit)
