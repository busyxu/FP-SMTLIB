(declare-fun x1_ack!5092 () (_ BitVec 64))
(declare-fun x0_ack!5098 () (_ BitVec 64))
(declare-fun x2_ack!5093 () (_ BitVec 64))
(declare-fun b_ack!5097 () (_ BitVec 64))
(declare-fun a_ack!5096 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5094 () (_ BitVec 64))
(declare-fun y1_ack!5095 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5098) ((_ to_fp 11 53) x1_ack!5092)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5092) ((_ to_fp 11 53) x2_ack!5093)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5092)
                       ((_ to_fp 11 53) x0_ack!5098))
               ((_ to_fp 11 53) x0_ack!5098))
       ((_ to_fp 11 53) x1_ack!5092)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5092)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5092)
                       ((_ to_fp 11 53) x0_ack!5098)))
       ((_ to_fp 11 53) x0_ack!5098)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5093)
                       ((_ to_fp 11 53) x1_ack!5092))
               ((_ to_fp 11 53) x1_ack!5092))
       ((_ to_fp 11 53) x2_ack!5093)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5093)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5093)
                       ((_ to_fp 11 53) x1_ack!5092)))
       ((_ to_fp 11 53) x1_ack!5092)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5092)
                    ((_ to_fp 11 53) x0_ack!5098))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5093)
                    ((_ to_fp 11 53) x1_ack!5092))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5096) ((_ to_fp 11 53) b_ack!5097))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5096) ((_ to_fp 11 53) x0_ack!5098))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5097) ((_ to_fp 11 53) x2_ack!5093))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5096) ((_ to_fp 11 53) b_ack!5097))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5096) ((_ to_fp 11 53) x0_ack!5098))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5096) ((_ to_fp 11 53) x1_ack!5092))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5097) ((_ to_fp 11 53) x0_ack!5098))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5097) ((_ to_fp 11 53) x1_ack!5092)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5092) ((_ to_fp 11 53) b_ack!5097))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5092)
                    ((_ to_fp 11 53) x0_ack!5098))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!5095)
          ((_ to_fp 11 53) y0_ack!5094))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5092)
          ((_ to_fp 11 53) x0_ack!5098))))

(check-sat)
(exit)
