(declare-fun x1_ack!5758 () (_ BitVec 64))
(declare-fun x0_ack!5762 () (_ BitVec 64))
(declare-fun x2_ack!5759 () (_ BitVec 64))
(declare-fun b_ack!5761 () (_ BitVec 64))
(declare-fun a_ack!5760 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5762) ((_ to_fp 11 53) x1_ack!5758)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5758) ((_ to_fp 11 53) x2_ack!5759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5758)
                       ((_ to_fp 11 53) x0_ack!5762))
               ((_ to_fp 11 53) x0_ack!5762))
       ((_ to_fp 11 53) x1_ack!5758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5758)
                       ((_ to_fp 11 53) x0_ack!5762)))
       ((_ to_fp 11 53) x0_ack!5762)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5759)
                       ((_ to_fp 11 53) x1_ack!5758))
               ((_ to_fp 11 53) x1_ack!5758))
       ((_ to_fp 11 53) x2_ack!5759)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5759)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5759)
                       ((_ to_fp 11 53) x1_ack!5758)))
       ((_ to_fp 11 53) x1_ack!5758)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5758)
                    ((_ to_fp 11 53) x0_ack!5762))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5759)
                    ((_ to_fp 11 53) x1_ack!5758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5760) ((_ to_fp 11 53) b_ack!5761))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5760) ((_ to_fp 11 53) x0_ack!5762))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5761) ((_ to_fp 11 53) x2_ack!5759))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5760) ((_ to_fp 11 53) b_ack!5761))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5760) ((_ to_fp 11 53) x0_ack!5762))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5760) ((_ to_fp 11 53) x1_ack!5758))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5761) ((_ to_fp 11 53) x0_ack!5762))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5761) ((_ to_fp 11 53) x1_ack!5758)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5758) ((_ to_fp 11 53) b_ack!5761))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5758)
                    ((_ to_fp 11 53) x0_ack!5762))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5760)
          ((_ to_fp 11 53) x0_ack!5762))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5758)
          ((_ to_fp 11 53) x0_ack!5762))))

(check-sat)
(exit)
