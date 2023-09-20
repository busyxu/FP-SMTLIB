(declare-fun x1_ack!4037 () (_ BitVec 64))
(declare-fun x0_ack!4041 () (_ BitVec 64))
(declare-fun x2_ack!4038 () (_ BitVec 64))
(declare-fun b_ack!4040 () (_ BitVec 64))
(declare-fun a_ack!4039 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4041) ((_ to_fp 11 53) x1_ack!4037)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4037) ((_ to_fp 11 53) x2_ack!4038)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4037)
                       ((_ to_fp 11 53) x0_ack!4041))
               ((_ to_fp 11 53) x0_ack!4041))
       ((_ to_fp 11 53) x1_ack!4037)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4037)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4037)
                       ((_ to_fp 11 53) x0_ack!4041)))
       ((_ to_fp 11 53) x0_ack!4041)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4038)
                       ((_ to_fp 11 53) x1_ack!4037))
               ((_ to_fp 11 53) x1_ack!4037))
       ((_ to_fp 11 53) x2_ack!4038)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4038)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4038)
                       ((_ to_fp 11 53) x1_ack!4037)))
       ((_ to_fp 11 53) x1_ack!4037)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4037)
                    ((_ to_fp 11 53) x0_ack!4041))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4038)
                    ((_ to_fp 11 53) x1_ack!4037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) b_ack!4040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x2_ack!4038))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) b_ack!4040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x1_ack!4037))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x1_ack!4037))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4037)
                    ((_ to_fp 11 53) x0_ack!4041))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4040)
          ((_ to_fp 11 53) x0_ack!4041))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4040)
          ((_ to_fp 11 53) x0_ack!4041))))

(check-sat)
(exit)
