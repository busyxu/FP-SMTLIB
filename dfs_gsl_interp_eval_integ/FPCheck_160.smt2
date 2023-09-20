(declare-fun x1_ack!1807 () (_ BitVec 64))
(declare-fun x0_ack!1813 () (_ BitVec 64))
(declare-fun x2_ack!1808 () (_ BitVec 64))
(declare-fun b_ack!1812 () (_ BitVec 64))
(declare-fun a_ack!1811 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1809 () (_ BitVec 64))
(declare-fun y2_ack!1810 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1813) ((_ to_fp 11 53) x1_ack!1807)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1807) ((_ to_fp 11 53) x2_ack!1808)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1807)
                       ((_ to_fp 11 53) x0_ack!1813))
               ((_ to_fp 11 53) x0_ack!1813))
       ((_ to_fp 11 53) x1_ack!1807)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1807)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1807)
                       ((_ to_fp 11 53) x0_ack!1813)))
       ((_ to_fp 11 53) x0_ack!1813)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1808)
                       ((_ to_fp 11 53) x1_ack!1807))
               ((_ to_fp 11 53) x1_ack!1807))
       ((_ to_fp 11 53) x2_ack!1808)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1808)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1808)
                       ((_ to_fp 11 53) x1_ack!1807)))
       ((_ to_fp 11 53) x1_ack!1807)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1807)
                    ((_ to_fp 11 53) x0_ack!1813))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1808)
                    ((_ to_fp 11 53) x1_ack!1807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1811) ((_ to_fp 11 53) b_ack!1812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1811) ((_ to_fp 11 53) x0_ack!1813))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) x2_ack!1808))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1811) ((_ to_fp 11 53) b_ack!1812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1811) ((_ to_fp 11 53) x0_ack!1813))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1811) ((_ to_fp 11 53) x1_ack!1807))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) x0_ack!1813))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1812) ((_ to_fp 11 53) x1_ack!1807)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1807) ((_ to_fp 11 53) b_ack!1812))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1807)
                    ((_ to_fp 11 53) x0_ack!1813))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1808)
                    ((_ to_fp 11 53) x1_ack!1807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1810)
          ((_ to_fp 11 53) y1_ack!1809))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1808)
          ((_ to_fp 11 53) x1_ack!1807))))

(check-sat)
(exit)
