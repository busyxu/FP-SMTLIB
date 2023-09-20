(declare-fun x1_ack!5164 () (_ BitVec 64))
(declare-fun x0_ack!5168 () (_ BitVec 64))
(declare-fun x2_ack!5165 () (_ BitVec 64))
(declare-fun b_ack!5167 () (_ BitVec 64))
(declare-fun a_ack!5166 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5168) ((_ to_fp 11 53) x1_ack!5164)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5164) ((_ to_fp 11 53) x2_ack!5165)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5164)
                       ((_ to_fp 11 53) x0_ack!5168))
               ((_ to_fp 11 53) x0_ack!5168))
       ((_ to_fp 11 53) x1_ack!5164)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5164)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5164)
                       ((_ to_fp 11 53) x0_ack!5168)))
       ((_ to_fp 11 53) x0_ack!5168)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5165)
                       ((_ to_fp 11 53) x1_ack!5164))
               ((_ to_fp 11 53) x1_ack!5164))
       ((_ to_fp 11 53) x2_ack!5165)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5165)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5165)
                       ((_ to_fp 11 53) x1_ack!5164)))
       ((_ to_fp 11 53) x1_ack!5164)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5164)
                    ((_ to_fp 11 53) x0_ack!5168))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5165)
                    ((_ to_fp 11 53) x1_ack!5164))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5166) ((_ to_fp 11 53) b_ack!5167))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5166) ((_ to_fp 11 53) x0_ack!5168))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5167) ((_ to_fp 11 53) x2_ack!5165))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5166) ((_ to_fp 11 53) b_ack!5167))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5166) ((_ to_fp 11 53) x0_ack!5168))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5166) ((_ to_fp 11 53) x1_ack!5164)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5164) ((_ to_fp 11 53) a_ack!5166))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5167) ((_ to_fp 11 53) x1_ack!5164))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5167) ((_ to_fp 11 53) x2_ack!5165)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5165)
                    ((_ to_fp 11 53) x1_ack!5164))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5166)
                       ((_ to_fp 11 53) x1_ack!5164))
               ((_ to_fp 11 53) x1_ack!5164))
       ((_ to_fp 11 53) a_ack!5166)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5166)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5166)
                       ((_ to_fp 11 53) x1_ack!5164)))
       ((_ to_fp 11 53) x1_ack!5164)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5166)
          ((_ to_fp 11 53) x1_ack!5164))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5166)
          ((_ to_fp 11 53) x1_ack!5164))))

(check-sat)
(exit)
