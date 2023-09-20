(declare-fun x1_ack!142 () (_ BitVec 64))
(declare-fun x0_ack!144 () (_ BitVec 64))
(declare-fun x2_ack!143 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!144) ((_ to_fp 11 53) x1_ack!142)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!142) ((_ to_fp 11 53) x2_ack!143)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!142)
                       ((_ to_fp 11 53) x0_ack!144))
               ((_ to_fp 11 53) x0_ack!144))
       ((_ to_fp 11 53) x1_ack!142)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!142)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!142)
                       ((_ to_fp 11 53) x0_ack!144)))
       ((_ to_fp 11 53) x0_ack!144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!143)
                       ((_ to_fp 11 53) x1_ack!142))
               ((_ to_fp 11 53) x1_ack!142))
       ((_ to_fp 11 53) x2_ack!143)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!143)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!143)
                       ((_ to_fp 11 53) x1_ack!142)))
       ((_ to_fp 11 53) x1_ack!142)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!142)
                    ((_ to_fp 11 53) x0_ack!144))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!143)
                    ((_ to_fp 11 53) x1_ack!142))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!143)
          ((_ to_fp 11 53) x1_ack!142))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!142)
          ((_ to_fp 11 53) x0_ack!144))))

(check-sat)
(exit)
