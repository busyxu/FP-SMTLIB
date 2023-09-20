(declare-fun x1_ack!6923 () (_ BitVec 64))
(declare-fun x0_ack!6927 () (_ BitVec 64))
(declare-fun x2_ack!6924 () (_ BitVec 64))
(declare-fun b_ack!6926 () (_ BitVec 64))
(declare-fun a_ack!6925 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6927) ((_ to_fp 11 53) x1_ack!6923)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6923) ((_ to_fp 11 53) x2_ack!6924)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6923)
                       ((_ to_fp 11 53) x0_ack!6927))
               ((_ to_fp 11 53) x0_ack!6927))
       ((_ to_fp 11 53) x1_ack!6923)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6923)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6923)
                       ((_ to_fp 11 53) x0_ack!6927)))
       ((_ to_fp 11 53) x0_ack!6927)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6924)
                       ((_ to_fp 11 53) x1_ack!6923))
               ((_ to_fp 11 53) x1_ack!6923))
       ((_ to_fp 11 53) x2_ack!6924)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6924)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6924)
                       ((_ to_fp 11 53) x1_ack!6923)))
       ((_ to_fp 11 53) x1_ack!6923)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6923)
                    ((_ to_fp 11 53) x0_ack!6927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6924)
                    ((_ to_fp 11 53) x1_ack!6923))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6925) ((_ to_fp 11 53) b_ack!6926))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6925) ((_ to_fp 11 53) x0_ack!6927))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6926) ((_ to_fp 11 53) x2_ack!6924))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6925) ((_ to_fp 11 53) b_ack!6926))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6925) ((_ to_fp 11 53) x0_ack!6927))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6925) ((_ to_fp 11 53) x1_ack!6923))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6926) ((_ to_fp 11 53) x0_ack!6927))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6926) ((_ to_fp 11 53) x1_ack!6923)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6923) ((_ to_fp 11 53) b_ack!6926))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6923)
                    ((_ to_fp 11 53) x0_ack!6927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6924)
                    ((_ to_fp 11 53) x1_ack!6923))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6924)
          ((_ to_fp 11 53) x1_ack!6923))))

(check-sat)
(exit)
