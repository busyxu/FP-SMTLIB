(declare-fun x1_ack!139 () (_ BitVec 64))
(declare-fun x0_ack!141 () (_ BitVec 64))
(declare-fun x2_ack!140 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!141) ((_ to_fp 11 53) x1_ack!139)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!139) ((_ to_fp 11 53) x2_ack!140)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!139)
                       ((_ to_fp 11 53) x0_ack!141))
               ((_ to_fp 11 53) x0_ack!141))
       ((_ to_fp 11 53) x1_ack!139)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!139)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!139)
                       ((_ to_fp 11 53) x0_ack!141)))
       ((_ to_fp 11 53) x0_ack!141)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!140)
                       ((_ to_fp 11 53) x1_ack!139))
               ((_ to_fp 11 53) x1_ack!139))
       ((_ to_fp 11 53) x2_ack!140)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!140)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!140)
                       ((_ to_fp 11 53) x1_ack!139)))
       ((_ to_fp 11 53) x1_ack!139)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!139)
                    ((_ to_fp 11 53) x0_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!140)
                    ((_ to_fp 11 53) x1_ack!139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!140)
          ((_ to_fp 11 53) x1_ack!139))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!139)
          ((_ to_fp 11 53) x0_ack!141))))

(check-sat)
(exit)
