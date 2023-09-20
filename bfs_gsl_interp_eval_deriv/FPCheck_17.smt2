(declare-fun x1_ack!118 () (_ BitVec 64))
(declare-fun x0_ack!120 () (_ BitVec 64))
(declare-fun x2_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!120) ((_ to_fp 11 53) x1_ack!118)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!118) ((_ to_fp 11 53) x2_ack!119)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!118)
                       ((_ to_fp 11 53) x0_ack!120))
               ((_ to_fp 11 53) x0_ack!120))
       ((_ to_fp 11 53) x1_ack!118)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!118)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!118)
                       ((_ to_fp 11 53) x0_ack!120)))
       ((_ to_fp 11 53) x0_ack!120)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!119)
                       ((_ to_fp 11 53) x1_ack!118))
               ((_ to_fp 11 53) x1_ack!118))
       ((_ to_fp 11 53) x2_ack!119)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!119)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!119)
                       ((_ to_fp 11 53) x1_ack!118)))
       ((_ to_fp 11 53) x1_ack!118)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!118)
                    ((_ to_fp 11 53) x0_ack!120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!119)
                    ((_ to_fp 11 53) x1_ack!118))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!119)
          ((_ to_fp 11 53) x1_ack!118))))

(check-sat)
(exit)
