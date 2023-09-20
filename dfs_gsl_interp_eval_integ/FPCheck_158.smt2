(declare-fun x1_ack!1779 () (_ BitVec 64))
(declare-fun x0_ack!1785 () (_ BitVec 64))
(declare-fun x2_ack!1780 () (_ BitVec 64))
(declare-fun b_ack!1784 () (_ BitVec 64))
(declare-fun a_ack!1783 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1781 () (_ BitVec 64))
(declare-fun y2_ack!1782 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1785) ((_ to_fp 11 53) x1_ack!1779)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1779) ((_ to_fp 11 53) x2_ack!1780)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1779)
                       ((_ to_fp 11 53) x0_ack!1785))
               ((_ to_fp 11 53) x0_ack!1785))
       ((_ to_fp 11 53) x1_ack!1779)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1779)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1779)
                       ((_ to_fp 11 53) x0_ack!1785)))
       ((_ to_fp 11 53) x0_ack!1785)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1780)
                       ((_ to_fp 11 53) x1_ack!1779))
               ((_ to_fp 11 53) x1_ack!1779))
       ((_ to_fp 11 53) x2_ack!1780)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1780)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1780)
                       ((_ to_fp 11 53) x1_ack!1779)))
       ((_ to_fp 11 53) x1_ack!1779)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1779)
                    ((_ to_fp 11 53) x0_ack!1785))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1780)
                    ((_ to_fp 11 53) x1_ack!1779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1783) ((_ to_fp 11 53) b_ack!1784))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1783) ((_ to_fp 11 53) x0_ack!1785))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1784) ((_ to_fp 11 53) x2_ack!1780))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1783) ((_ to_fp 11 53) b_ack!1784))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1783) ((_ to_fp 11 53) x0_ack!1785))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1783) ((_ to_fp 11 53) x1_ack!1779))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1784) ((_ to_fp 11 53) x0_ack!1785))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1784) ((_ to_fp 11 53) x1_ack!1779)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1779) ((_ to_fp 11 53) b_ack!1784))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1779)
                    ((_ to_fp 11 53) x0_ack!1785))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1780)
                    ((_ to_fp 11 53) x1_ack!1779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1782)
          ((_ to_fp 11 53) y1_ack!1781))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1780)
          ((_ to_fp 11 53) x1_ack!1779))))

(check-sat)
(exit)
