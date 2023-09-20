(declare-fun x1_ack!5099 () (_ BitVec 64))
(declare-fun x0_ack!5105 () (_ BitVec 64))
(declare-fun x2_ack!5100 () (_ BitVec 64))
(declare-fun b_ack!5104 () (_ BitVec 64))
(declare-fun a_ack!5103 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5101 () (_ BitVec 64))
(declare-fun y1_ack!5102 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5105) ((_ to_fp 11 53) x1_ack!5099)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5099) ((_ to_fp 11 53) x2_ack!5100)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5099)
                       ((_ to_fp 11 53) x0_ack!5105))
               ((_ to_fp 11 53) x0_ack!5105))
       ((_ to_fp 11 53) x1_ack!5099)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5099)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5099)
                       ((_ to_fp 11 53) x0_ack!5105)))
       ((_ to_fp 11 53) x0_ack!5105)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5100)
                       ((_ to_fp 11 53) x1_ack!5099))
               ((_ to_fp 11 53) x1_ack!5099))
       ((_ to_fp 11 53) x2_ack!5100)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5100)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5100)
                       ((_ to_fp 11 53) x1_ack!5099)))
       ((_ to_fp 11 53) x1_ack!5099)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5099)
                    ((_ to_fp 11 53) x0_ack!5105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5100)
                    ((_ to_fp 11 53) x1_ack!5099))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) b_ack!5104))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x0_ack!5105))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x2_ack!5100))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) b_ack!5104))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x0_ack!5105))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5103) ((_ to_fp 11 53) x1_ack!5099))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x0_ack!5105))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5104) ((_ to_fp 11 53) x1_ack!5099)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5099) ((_ to_fp 11 53) b_ack!5104))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5099)
                    ((_ to_fp 11 53) x0_ack!5105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!5102)
          ((_ to_fp 11 53) y0_ack!5101))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5099)
          ((_ to_fp 11 53) x0_ack!5105))))

(check-sat)
(exit)
