(declare-fun x1_ack!151 () (_ BitVec 64))
(declare-fun x0_ack!153 () (_ BitVec 64))
(declare-fun x2_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!153) ((_ to_fp 11 53) x1_ack!151)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!151) ((_ to_fp 11 53) x2_ack!152)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!151)
                       ((_ to_fp 11 53) x0_ack!153))
               ((_ to_fp 11 53) x0_ack!153))
       ((_ to_fp 11 53) x1_ack!151)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!151)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!151)
                       ((_ to_fp 11 53) x0_ack!153)))
       ((_ to_fp 11 53) x0_ack!153)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!152)
                       ((_ to_fp 11 53) x1_ack!151))
               ((_ to_fp 11 53) x1_ack!151))
       ((_ to_fp 11 53) x2_ack!152)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!152)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!152)
                       ((_ to_fp 11 53) x1_ack!151)))
       ((_ to_fp 11 53) x1_ack!151)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!151)
                    ((_ to_fp 11 53) x0_ack!153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!152)
                    ((_ to_fp 11 53) x1_ack!151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!152)
                  ((_ to_fp 11 53) x1_ack!151))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!151)
                  ((_ to_fp 11 53) x0_ack!153)))))

(check-sat)
(exit)
