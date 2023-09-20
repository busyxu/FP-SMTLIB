(declare-fun x1_ack!121 () (_ BitVec 64))
(declare-fun x0_ack!123 () (_ BitVec 64))
(declare-fun x2_ack!122 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!123) ((_ to_fp 11 53) x1_ack!121)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!121) ((_ to_fp 11 53) x2_ack!122)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!121)
                       ((_ to_fp 11 53) x0_ack!123))
               ((_ to_fp 11 53) x0_ack!123))
       ((_ to_fp 11 53) x1_ack!121)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!121)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!121)
                       ((_ to_fp 11 53) x0_ack!123)))
       ((_ to_fp 11 53) x0_ack!123)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!122)
                       ((_ to_fp 11 53) x1_ack!121))
               ((_ to_fp 11 53) x1_ack!121))
       ((_ to_fp 11 53) x2_ack!122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!122)
                       ((_ to_fp 11 53) x1_ack!121)))
       ((_ to_fp 11 53) x1_ack!121)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!121)
                    ((_ to_fp 11 53) x0_ack!123))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!122)
                    ((_ to_fp 11 53) x1_ack!121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!122)
          ((_ to_fp 11 53) x1_ack!121))))

(check-sat)
(exit)
