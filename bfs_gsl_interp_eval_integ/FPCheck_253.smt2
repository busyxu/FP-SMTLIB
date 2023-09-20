(declare-fun x1_ack!3037 () (_ BitVec 64))
(declare-fun x0_ack!3041 () (_ BitVec 64))
(declare-fun x2_ack!3038 () (_ BitVec 64))
(declare-fun b_ack!3040 () (_ BitVec 64))
(declare-fun a_ack!3039 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3041) ((_ to_fp 11 53) x1_ack!3037)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3037) ((_ to_fp 11 53) x2_ack!3038)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3037)
                       ((_ to_fp 11 53) x0_ack!3041))
               ((_ to_fp 11 53) x0_ack!3041))
       ((_ to_fp 11 53) x1_ack!3037)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3037)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3037)
                       ((_ to_fp 11 53) x0_ack!3041)))
       ((_ to_fp 11 53) x0_ack!3041)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3038)
                       ((_ to_fp 11 53) x1_ack!3037))
               ((_ to_fp 11 53) x1_ack!3037))
       ((_ to_fp 11 53) x2_ack!3038)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3038)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3038)
                       ((_ to_fp 11 53) x1_ack!3037)))
       ((_ to_fp 11 53) x1_ack!3037)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3037)
                    ((_ to_fp 11 53) x0_ack!3041))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3038)
                    ((_ to_fp 11 53) x1_ack!3037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3039) ((_ to_fp 11 53) b_ack!3040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3039) ((_ to_fp 11 53) x0_ack!3041))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3040) ((_ to_fp 11 53) x2_ack!3038))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3039) ((_ to_fp 11 53) b_ack!3040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3039) ((_ to_fp 11 53) x0_ack!3041))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3039) ((_ to_fp 11 53) x1_ack!3037)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3037) ((_ to_fp 11 53) a_ack!3039))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3040) ((_ to_fp 11 53) x1_ack!3037))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3040) ((_ to_fp 11 53) x2_ack!3038))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3038)
                    ((_ to_fp 11 53) x1_ack!3037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3040)
          ((_ to_fp 11 53) x1_ack!3037))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3040)
          ((_ to_fp 11 53) x1_ack!3037))))

(check-sat)
(exit)
