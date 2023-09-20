(declare-fun x1_ack!148 () (_ BitVec 64))
(declare-fun x0_ack!150 () (_ BitVec 64))
(declare-fun x2_ack!149 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!150) ((_ to_fp 11 53) x1_ack!148)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!148) ((_ to_fp 11 53) x2_ack!149)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!148)
                       ((_ to_fp 11 53) x0_ack!150))
               ((_ to_fp 11 53) x0_ack!150))
       ((_ to_fp 11 53) x1_ack!148)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!148)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!148)
                       ((_ to_fp 11 53) x0_ack!150)))
       ((_ to_fp 11 53) x0_ack!150)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!149)
                       ((_ to_fp 11 53) x1_ack!148))
               ((_ to_fp 11 53) x1_ack!148))
       ((_ to_fp 11 53) x2_ack!149)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!149)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!149)
                       ((_ to_fp 11 53) x1_ack!148)))
       ((_ to_fp 11 53) x1_ack!148)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!148)
                    ((_ to_fp 11 53) x0_ack!150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!149)
                    ((_ to_fp 11 53) x1_ack!148))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!149)
          ((_ to_fp 11 53) x1_ack!148))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!148)
          ((_ to_fp 11 53) x0_ack!150))))

(check-sat)
(exit)
