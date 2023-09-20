(declare-fun x1_ack!3170 () (_ BitVec 64))
(declare-fun x0_ack!3176 () (_ BitVec 64))
(declare-fun x2_ack!3171 () (_ BitVec 64))
(declare-fun b_ack!3175 () (_ BitVec 64))
(declare-fun a_ack!3174 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3172 () (_ BitVec 64))
(declare-fun y1_ack!3173 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3176) ((_ to_fp 11 53) x1_ack!3170)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3170) ((_ to_fp 11 53) x2_ack!3171)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3170)
                       ((_ to_fp 11 53) x0_ack!3176))
               ((_ to_fp 11 53) x0_ack!3176))
       ((_ to_fp 11 53) x1_ack!3170)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3170)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3170)
                       ((_ to_fp 11 53) x0_ack!3176)))
       ((_ to_fp 11 53) x0_ack!3176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3171)
                       ((_ to_fp 11 53) x1_ack!3170))
               ((_ to_fp 11 53) x1_ack!3170))
       ((_ to_fp 11 53) x2_ack!3171)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3171)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3171)
                       ((_ to_fp 11 53) x1_ack!3170)))
       ((_ to_fp 11 53) x1_ack!3170)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3170)
                    ((_ to_fp 11 53) x0_ack!3176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3171)
                    ((_ to_fp 11 53) x1_ack!3170))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3174) ((_ to_fp 11 53) b_ack!3175))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3174) ((_ to_fp 11 53) x0_ack!3176))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3175) ((_ to_fp 11 53) x2_ack!3171))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3174) ((_ to_fp 11 53) b_ack!3175))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3174) ((_ to_fp 11 53) x0_ack!3176))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3174) ((_ to_fp 11 53) x1_ack!3170))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3175) ((_ to_fp 11 53) x0_ack!3176))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3175) ((_ to_fp 11 53) x1_ack!3170))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3170)
                    ((_ to_fp 11 53) x0_ack!3176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!3173)
          ((_ to_fp 11 53) y0_ack!3172))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3170)
          ((_ to_fp 11 53) x0_ack!3176))))

(check-sat)
(exit)
