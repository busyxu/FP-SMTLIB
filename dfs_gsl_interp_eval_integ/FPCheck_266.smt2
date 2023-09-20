(declare-fun x1_ack!3163 () (_ BitVec 64))
(declare-fun x0_ack!3169 () (_ BitVec 64))
(declare-fun x2_ack!3164 () (_ BitVec 64))
(declare-fun b_ack!3168 () (_ BitVec 64))
(declare-fun a_ack!3167 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3165 () (_ BitVec 64))
(declare-fun y1_ack!3166 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3169) ((_ to_fp 11 53) x1_ack!3163)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3163) ((_ to_fp 11 53) x2_ack!3164)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3163)
                       ((_ to_fp 11 53) x0_ack!3169))
               ((_ to_fp 11 53) x0_ack!3169))
       ((_ to_fp 11 53) x1_ack!3163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3163)
                       ((_ to_fp 11 53) x0_ack!3169)))
       ((_ to_fp 11 53) x0_ack!3169)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3164)
                       ((_ to_fp 11 53) x1_ack!3163))
               ((_ to_fp 11 53) x1_ack!3163))
       ((_ to_fp 11 53) x2_ack!3164)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3164)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3164)
                       ((_ to_fp 11 53) x1_ack!3163)))
       ((_ to_fp 11 53) x1_ack!3163)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3163)
                    ((_ to_fp 11 53) x0_ack!3169))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3164)
                    ((_ to_fp 11 53) x1_ack!3163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3167) ((_ to_fp 11 53) b_ack!3168))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3167) ((_ to_fp 11 53) x0_ack!3169))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3168) ((_ to_fp 11 53) x2_ack!3164))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3167) ((_ to_fp 11 53) b_ack!3168))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3167) ((_ to_fp 11 53) x0_ack!3169))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3167) ((_ to_fp 11 53) x1_ack!3163))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3168) ((_ to_fp 11 53) x0_ack!3169))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3168) ((_ to_fp 11 53) x1_ack!3163))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3163)
                    ((_ to_fp 11 53) x0_ack!3169))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!3166)
          ((_ to_fp 11 53) y0_ack!3165))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3163)
          ((_ to_fp 11 53) x0_ack!3169))))

(check-sat)
(exit)
