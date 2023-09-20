(declare-fun x1_ack!157 () (_ BitVec 64))
(declare-fun x0_ack!159 () (_ BitVec 64))
(declare-fun x2_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!159) ((_ to_fp 11 53) x1_ack!157)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!157) ((_ to_fp 11 53) x2_ack!158)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!157)
                       ((_ to_fp 11 53) x0_ack!159))
               ((_ to_fp 11 53) x0_ack!159))
       ((_ to_fp 11 53) x1_ack!157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!157)
                       ((_ to_fp 11 53) x0_ack!159)))
       ((_ to_fp 11 53) x0_ack!159)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!158)
                       ((_ to_fp 11 53) x1_ack!157))
               ((_ to_fp 11 53) x1_ack!157))
       ((_ to_fp 11 53) x2_ack!158)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!158)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!158)
                       ((_ to_fp 11 53) x1_ack!157)))
       ((_ to_fp 11 53) x1_ack!157)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!157)
                    ((_ to_fp 11 53) x0_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!158)
                    ((_ to_fp 11 53) x1_ack!157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!158)
                  ((_ to_fp 11 53) x1_ack!157))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!157)
                  ((_ to_fp 11 53) x0_ack!159)))))

(check-sat)
(exit)
