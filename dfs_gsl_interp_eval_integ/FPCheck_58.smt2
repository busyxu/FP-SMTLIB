(declare-fun x1_ack!540 () (_ BitVec 64))
(declare-fun x0_ack!546 () (_ BitVec 64))
(declare-fun x2_ack!541 () (_ BitVec 64))
(declare-fun b_ack!545 () (_ BitVec 64))
(declare-fun a_ack!544 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!542 () (_ BitVec 64))
(declare-fun y1_ack!543 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!546) ((_ to_fp 11 53) x1_ack!540)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!540) ((_ to_fp 11 53) x2_ack!541)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!540)
                       ((_ to_fp 11 53) x0_ack!546))
               ((_ to_fp 11 53) x0_ack!546))
       ((_ to_fp 11 53) x1_ack!540)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!540)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!540)
                       ((_ to_fp 11 53) x0_ack!546)))
       ((_ to_fp 11 53) x0_ack!546)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!541)
                       ((_ to_fp 11 53) x1_ack!540))
               ((_ to_fp 11 53) x1_ack!540))
       ((_ to_fp 11 53) x2_ack!541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!541)
                       ((_ to_fp 11 53) x1_ack!540)))
       ((_ to_fp 11 53) x1_ack!540)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!540)
                    ((_ to_fp 11 53) x0_ack!546))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!541)
                    ((_ to_fp 11 53) x1_ack!540))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) b_ack!545))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) x0_ack!546))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!545) ((_ to_fp 11 53) x2_ack!541))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) b_ack!545))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) x0_ack!546))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) x1_ack!540))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!545) ((_ to_fp 11 53) x0_ack!546))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!545) ((_ to_fp 11 53) x1_ack!540)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!540) ((_ to_fp 11 53) b_ack!545))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!540)
                    ((_ to_fp 11 53) x0_ack!546))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!543)
          ((_ to_fp 11 53) y0_ack!542))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!540)
          ((_ to_fp 11 53) x0_ack!546))))

(check-sat)
(exit)
