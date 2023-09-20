(declare-fun x1_ack!5050 () (_ BitVec 64))
(declare-fun x0_ack!5056 () (_ BitVec 64))
(declare-fun x2_ack!5051 () (_ BitVec 64))
(declare-fun b_ack!5055 () (_ BitVec 64))
(declare-fun a_ack!5054 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5052 () (_ BitVec 64))
(declare-fun y1_ack!5053 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5056) ((_ to_fp 11 53) x1_ack!5050)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5050) ((_ to_fp 11 53) x2_ack!5051)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5050)
                       ((_ to_fp 11 53) x0_ack!5056))
               ((_ to_fp 11 53) x0_ack!5056))
       ((_ to_fp 11 53) x1_ack!5050)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5050)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5050)
                       ((_ to_fp 11 53) x0_ack!5056)))
       ((_ to_fp 11 53) x0_ack!5056)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5051)
                       ((_ to_fp 11 53) x1_ack!5050))
               ((_ to_fp 11 53) x1_ack!5050))
       ((_ to_fp 11 53) x2_ack!5051)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5051)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5051)
                       ((_ to_fp 11 53) x1_ack!5050)))
       ((_ to_fp 11 53) x1_ack!5050)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5050)
                    ((_ to_fp 11 53) x0_ack!5056))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5051)
                    ((_ to_fp 11 53) x1_ack!5050))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5054) ((_ to_fp 11 53) b_ack!5055))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5054) ((_ to_fp 11 53) x0_ack!5056))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5055) ((_ to_fp 11 53) x2_ack!5051))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5054) ((_ to_fp 11 53) b_ack!5055))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5054) ((_ to_fp 11 53) x0_ack!5056))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5054) ((_ to_fp 11 53) x1_ack!5050))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5055) ((_ to_fp 11 53) x0_ack!5056))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5055) ((_ to_fp 11 53) x1_ack!5050)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5050) ((_ to_fp 11 53) b_ack!5055))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5050)
                    ((_ to_fp 11 53) x0_ack!5056))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!5053)
          ((_ to_fp 11 53) y0_ack!5052))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5050)
          ((_ to_fp 11 53) x0_ack!5056))))

(check-sat)
(exit)
