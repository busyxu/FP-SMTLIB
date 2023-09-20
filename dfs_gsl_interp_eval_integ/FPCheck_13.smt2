(declare-fun x1_ack!100 () (_ BitVec 64))
(declare-fun x0_ack!102 () (_ BitVec 64))
(declare-fun x2_ack!101 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!102) ((_ to_fp 11 53) x1_ack!100)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!100) ((_ to_fp 11 53) x2_ack!101)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!100)
                       ((_ to_fp 11 53) x0_ack!102))
               ((_ to_fp 11 53) x0_ack!102))
       ((_ to_fp 11 53) x1_ack!100)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!100)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!100)
                       ((_ to_fp 11 53) x0_ack!102)))
       ((_ to_fp 11 53) x0_ack!102)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!101)
                       ((_ to_fp 11 53) x1_ack!100))
               ((_ to_fp 11 53) x1_ack!100))
       ((_ to_fp 11 53) x2_ack!101)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!101)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!101)
                       ((_ to_fp 11 53) x1_ack!100)))
       ((_ to_fp 11 53) x1_ack!100)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!100)
                    ((_ to_fp 11 53) x0_ack!102))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!100)
          ((_ to_fp 11 53) x0_ack!102))))

(check-sat)
(exit)
