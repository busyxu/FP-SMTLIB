(declare-fun x1_ack!1793 () (_ BitVec 64))
(declare-fun x0_ack!1799 () (_ BitVec 64))
(declare-fun x2_ack!1794 () (_ BitVec 64))
(declare-fun b_ack!1798 () (_ BitVec 64))
(declare-fun a_ack!1797 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1795 () (_ BitVec 64))
(declare-fun y2_ack!1796 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1799) ((_ to_fp 11 53) x1_ack!1793)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1793) ((_ to_fp 11 53) x2_ack!1794)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1793)
                       ((_ to_fp 11 53) x0_ack!1799))
               ((_ to_fp 11 53) x0_ack!1799))
       ((_ to_fp 11 53) x1_ack!1793)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1793)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1793)
                       ((_ to_fp 11 53) x0_ack!1799)))
       ((_ to_fp 11 53) x0_ack!1799)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1794)
                       ((_ to_fp 11 53) x1_ack!1793))
               ((_ to_fp 11 53) x1_ack!1793))
       ((_ to_fp 11 53) x2_ack!1794)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1794)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1794)
                       ((_ to_fp 11 53) x1_ack!1793)))
       ((_ to_fp 11 53) x1_ack!1793)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1793)
                    ((_ to_fp 11 53) x0_ack!1799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1794)
                    ((_ to_fp 11 53) x1_ack!1793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) b_ack!1798))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x0_ack!1799))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1798) ((_ to_fp 11 53) x2_ack!1794))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) b_ack!1798))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x0_ack!1799))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x1_ack!1793))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1798) ((_ to_fp 11 53) x0_ack!1799))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1798) ((_ to_fp 11 53) x1_ack!1793)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1793) ((_ to_fp 11 53) b_ack!1798))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1793)
                    ((_ to_fp 11 53) x0_ack!1799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1794)
                    ((_ to_fp 11 53) x1_ack!1793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1796)
          ((_ to_fp 11 53) y1_ack!1795))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1794)
          ((_ to_fp 11 53) x1_ack!1793))))

(check-sat)
(exit)
