(declare-fun x1_ack!1814 () (_ BitVec 64))
(declare-fun x0_ack!1820 () (_ BitVec 64))
(declare-fun x2_ack!1815 () (_ BitVec 64))
(declare-fun b_ack!1819 () (_ BitVec 64))
(declare-fun a_ack!1818 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1816 () (_ BitVec 64))
(declare-fun y2_ack!1817 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1820) ((_ to_fp 11 53) x1_ack!1814)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1814) ((_ to_fp 11 53) x2_ack!1815)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1814)
                       ((_ to_fp 11 53) x0_ack!1820))
               ((_ to_fp 11 53) x0_ack!1820))
       ((_ to_fp 11 53) x1_ack!1814)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1814)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1814)
                       ((_ to_fp 11 53) x0_ack!1820)))
       ((_ to_fp 11 53) x0_ack!1820)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1815)
                       ((_ to_fp 11 53) x1_ack!1814))
               ((_ to_fp 11 53) x1_ack!1814))
       ((_ to_fp 11 53) x2_ack!1815)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1815)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1815)
                       ((_ to_fp 11 53) x1_ack!1814)))
       ((_ to_fp 11 53) x1_ack!1814)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1814)
                    ((_ to_fp 11 53) x0_ack!1820))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1815)
                    ((_ to_fp 11 53) x1_ack!1814))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1818) ((_ to_fp 11 53) b_ack!1819))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1818) ((_ to_fp 11 53) x0_ack!1820))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1819) ((_ to_fp 11 53) x2_ack!1815))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1818) ((_ to_fp 11 53) b_ack!1819))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1818) ((_ to_fp 11 53) x0_ack!1820))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1818) ((_ to_fp 11 53) x1_ack!1814))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1819) ((_ to_fp 11 53) x0_ack!1820))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1819) ((_ to_fp 11 53) x1_ack!1814)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1814) ((_ to_fp 11 53) b_ack!1819))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1814)
                    ((_ to_fp 11 53) x0_ack!1820))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1815)
                    ((_ to_fp 11 53) x1_ack!1814))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1817)
          ((_ to_fp 11 53) y1_ack!1816))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1815)
          ((_ to_fp 11 53) x1_ack!1814))))

(check-sat)
(exit)
