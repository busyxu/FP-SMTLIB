(declare-fun x1_ack!6551 () (_ BitVec 64))
(declare-fun x0_ack!6557 () (_ BitVec 64))
(declare-fun x2_ack!6552 () (_ BitVec 64))
(declare-fun b_ack!6556 () (_ BitVec 64))
(declare-fun a_ack!6555 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!6553 () (_ BitVec 64))
(declare-fun y2_ack!6554 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6557) ((_ to_fp 11 53) x1_ack!6551)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6551) ((_ to_fp 11 53) x2_ack!6552)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6551)
                       ((_ to_fp 11 53) x0_ack!6557))
               ((_ to_fp 11 53) x0_ack!6557))
       ((_ to_fp 11 53) x1_ack!6551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6551)
                       ((_ to_fp 11 53) x0_ack!6557)))
       ((_ to_fp 11 53) x0_ack!6557)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6552)
                       ((_ to_fp 11 53) x1_ack!6551))
               ((_ to_fp 11 53) x1_ack!6551))
       ((_ to_fp 11 53) x2_ack!6552)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6552)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6552)
                       ((_ to_fp 11 53) x1_ack!6551)))
       ((_ to_fp 11 53) x1_ack!6551)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6551)
                    ((_ to_fp 11 53) x0_ack!6557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6552)
                    ((_ to_fp 11 53) x1_ack!6551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6555) ((_ to_fp 11 53) b_ack!6556))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6555) ((_ to_fp 11 53) x0_ack!6557))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6556) ((_ to_fp 11 53) x2_ack!6552))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6555) ((_ to_fp 11 53) b_ack!6556))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6555) ((_ to_fp 11 53) x0_ack!6557))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6555) ((_ to_fp 11 53) x1_ack!6551))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6556) ((_ to_fp 11 53) x0_ack!6557))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6556) ((_ to_fp 11 53) x1_ack!6551)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6551) ((_ to_fp 11 53) b_ack!6556))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6551)
                    ((_ to_fp 11 53) x0_ack!6557))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6552)
                    ((_ to_fp 11 53) x1_ack!6551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!6554)
          ((_ to_fp 11 53) y1_ack!6553))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6552)
          ((_ to_fp 11 53) x1_ack!6551))))

(check-sat)
(exit)
